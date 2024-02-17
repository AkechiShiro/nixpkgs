{ lib, fetchFromGitHub, stdenv }:

stdenv.mkDerivation (finalAttrs: {
  pname = "sucrack";
  version = "1.2.3";
  # version comes this very old link :
  # https://salsa.debian.org/pkg-security-team/sucrack

  src = fetchFromGitHub {
    owner = "hemp3l";
    repo = "sucrack";
    rev = "c738b9a6d78b6aa517767d7621480a3f3dfb4dd6";
    hash = "sha256-/VzfM/e1+Vbz3aA9lwZRAunzqPst217rPn5TglkLuc8=";
  };

  meta = with lib; {
    homepage = "https://github.com/hemp3l/sucrack";
    description = ''
      sucrack is a multithreaded Linux/UNIX tool for cracking local user accounts via wordlist bruteforcing su.
      This tool comes in handy when you’ve gained access to a low-privilege user account but are allowed to su to other users.
    '';
    mainProgram = "sucrack";
    maintainers = with maintainers; [ akechishiro ];
    platforms = platforms.unix;
    license = with licenses; [ bsd3 ];
  };
})
