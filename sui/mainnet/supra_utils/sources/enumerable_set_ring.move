module supra_utils::enumerable_set_ring {
    struct EnnumerableSetRing<T0: copy + drop + store> has store {
        list: vector<T0>,
        map: 0x2::table::Table<T0, u64>,
        pointer: u64,
        capacity: u64,
    }
    
    native public fun contains<T0: copy + drop + store>(arg0: &EnnumerableSetRing<T0>, arg1: T0);
    native public fun length<T0: copy + drop + store>(arg0: &EnnumerableSetRing<T0>) : u64;

    native public fun add<T0: copy + drop + store>(arg0: &mut EnnumerableSetRing<T0>, arg1: T0);
    
    native public fun new<T0: copy + drop + store>(arg0: u64, arg1: &mut 0x2::tx_context::TxContext) : EnnumerableSetRing<T0>;
    
    native public fun add_all<T0: copy + drop + store>(arg0: &mut EnnumerableSetRing<T0>, arg1: vector<T0>);
    
    native public fun destroy<T0: copy + drop + store>(arg0: &mut EnnumerableSetRing<T0>);

    native public fun list<T0: copy + drop + store>(arg0: &EnnumerableSetRing<T0>) : vector<T0>;
}

