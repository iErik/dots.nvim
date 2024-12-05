self: { pkgs, lib, config, ... }: let
  inherit (lib) mkOption mkIf types;
  inherit (lib.hm.dag) entryAfter;
  inherit (config.home) username homeDirectory;

  cfg = config.dots.nvim;
  dotsDir = "${homeDirectory}/${cfg.directory}";
  xdgConfDir = "${homeDirectory}/.config/nvim";
  repoUrl = "git@github.com:iErik/dots.nvim.git";
in {
  options.dots.nvim = {
    enable = mkOption {
      type = types.bool;
      default = false;
      description = "Enable NeoVim Dotfiles module";
    };

    cloneConfig = mkOption {
      type = types.bool;
      default = true;
      description =
        "Whether or not to clone the Dotfiles" +
        "repository to the user's directory";
    };

    directory = mkOption {
      type = types.str;
      default = "Dots/NeoVim.dot";
      description =
        "The path of the directory in which to " +
        "store the dotfiles (relative to the " +
        "user's home directory).";
    };

    installLsps = mkOption {
      type = types.bool;
      default = false;
      description = "Install LSPs for NeoVim";
    };
  };

  config = mkIf cfg.enable {
    home.packages = [ pkgs.neovim ];

    home.activation.nvimSetup = mkIf cfg.cloneConfig
      (entryAfter ["writeBoundary"] ''
        export PATH=${pkgs.git}/bin:$PATH

	eval $(ssh-agent -s)
	ssh-add ${homeDirectory}/.ssh/id_25529

        rm -rf ${dotsDir}
        rm -rf ${xdgConfDir}

        git clone ${repoUrl} ${dotsDir}

        chown -R ${username}:users ${dotsDir}
        find ${dotsDir} -type d -exec chmod 744 {} \;
        find  ${dotsDir} -type f -exec chmod 644 {} \;

        ln -s ${dotsDir} ${xdgConfDir}

	ssh-agent -k
      '');
  };
}
