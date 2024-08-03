module volatus_oracle::oracle{
    use pyth::pyth;
    use pyth::price::Price;
    use pyth::price_identifier;
    use aptos_framework::coin;
    use std::string::String;


    //oracle::get_and_update_price_by_name(coin_info.type_name)
    public fun get_and_update_price_by_name(coin_name: String): Price {
        let btc_price_identifier = x"44a93dddd8effa54ea51076c4e851b6cbbfd938e82eb90197de38fe8876bb66e";
        let btc_usd_price_id = price_identifier::from_byte_vec(btc_price_identifier);
        pyth::get_price(btc_usd_price_id)
    }

    public fun get_and_update_price_by_metadata(coin_name: String): Price {
        let btc_price_identifier = x"44a93dddd8effa54ea51076c4e851b6cbbfd938e82eb90197de38fe8876bb66e";
        let btc_usd_price_id = price_identifier::from_byte_vec(btc_price_identifier);
        pyth::get_price(btc_usd_price_id)
    }

}
