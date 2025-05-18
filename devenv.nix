{ pkgs, ... }: {
  # env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [
    pkgs.apacheHttpd
    pkgs.apacheHttpdPackages.mod_wsgi3
    pkgs.sqlite
    pkgs.litecli
  ];

  # https://devenv.sh/languages/
  languages.python = {
    enable = true;
    package = pkgs.python313;
    uv.enable = true;
    venv.enable = true;
    venv.requirements = ''
      Django
      black
    '';
  };
}
