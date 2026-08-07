{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    brave
  ];

  programs.chromium = {
    enable = true;
    defaultSearchProviderEnabled = true;
    defaultSearchProviderSearchURL = "https://google.com/search?q={searchTerms}";
    defaultSearchProviderSuggestURL = "https://google.com/complete/search?output=chrome&q={searchTerms}";
    extraOpts = {
      "PasswordManagerEnabled" = false;
      "BraveAIChatEnabled" = false;
      "BraveRewardsDisabled" = true;
      "BraveWalletDisabled" = true;
    };
    extensions = [
      "nngceckbapebfimnlniiiahkandclblb" # Bitwarden Password Manager
      "nkbihfbeogaeaoehlefnkodbefgpgknn" # MetaMask
    ];
  };
}
