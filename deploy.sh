logo64="data:image/png;base64,$(base64 logo.png)"

dfx deploy icrc1 --network ic --argument '( record {
    name = "Internet Doge";
    symbol = "iDOGE";
    decimals = 18;
    fee = 0;
    logo = "'"$logo64"'";
    max_supply = 1_000_000_000_000_000_000_000_000;
    initial_balances = vec {
        record {
            record {
                owner = principal "peg2s-47dqj-7dnez-bznad-kclyo-rxbc7-oor7s-wc3kx-e5k23-ziivp-oqe";
                subaccount = null;
            };
            1_000_000_000_000_000_000_000_000
        }
    };
    min_burn_amount = 0;
    minting_account = null;
    advanced_settings = null;
})'
