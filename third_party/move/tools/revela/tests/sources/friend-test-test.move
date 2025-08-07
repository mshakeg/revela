module NamedAddr::FriendTestModule {
    friend NamedAddr::FriendHelper;
    
    public(friend) fun friend_only_function(): u64 {
        42
    }
    
    public fun public_function(): u64 {
        friend_only_function()
    }
}

module NamedAddr::FriendHelper {
    use NamedAddr::FriendTestModule;
    
    public fun call_friend_function(): u64 {
        FriendTestModule::friend_only_function()
    }
}
