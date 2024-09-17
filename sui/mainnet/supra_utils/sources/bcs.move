module supra_utils::bcs {
    struct BCS has copy, drop, store {
        bytes: vector<u8>,
    }
    
    native public fun to_bytes<T0>(arg0: &T0): vector<u8>;
    
    native public fun into_remainder_bytes(arg0: BCS): vector<u8>;
    
    native public fun new(arg0: vector<u8>): BCS;
    
    native public fun peel_bool(arg0: &mut BCS): bool;
    
    native public fun peel_u128(arg0: &mut BCS) : u128;
    
    native public fun peel_u16(arg0: &mut BCS) : u16;
    
    native public fun peel_u32(arg0: &mut BCS) : u32;
    
    native public fun peel_u64(arg0: &mut BCS) : u64;
    
    native public fun peel_u8(arg0: &mut BCS) : u8;
    
    native public fun peel_vec_bool(arg0: &mut BCS) : vector<bool>;
    
    native public fun peel_vec_length(arg0: &mut BCS) : u64;
    
    native public fun peel_vec_u128(arg0: &mut BCS) : vector<u128>;
    
    native public fun peel_vec_u16(arg0: &mut BCS) : vector<u16>;
    
    native public fun peel_vec_u32(arg0: &mut BCS) : vector<u32>;
    
    native public fun peel_vec_u64(arg0: &mut BCS) : vector<u64>;
    
    native public fun peel_vec_u8(arg0: &mut BCS) : vector<u8>;
    
    native public fun peel_vec_vec_u8(arg0: &mut BCS) : vector<vector<u8>>;
    
    native public fun peel_vec_vec_vec_u8(arg0: &mut BCS) : vector<vector<vector<u8>>>;
}

