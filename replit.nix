{ pkgs }: {
  deps = [
    pkgs.open-watcom-v2
    pkgs.q
    pkgs.q.out
    pkgs.bashInteractive
    pkgs.nodePackages.bash-language-server
    pkgs.man
  ];
}