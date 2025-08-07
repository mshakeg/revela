module 0xbadbadbad::FriendTestModule {
        friend 0x0000000000000000000000000000000000000000000000000000000badbadbad::FriendHelper;
    public(friend) fun friend_only_function() : u64 {
        42
    }
    
    public fun public_function() : u64 {
        friend_only_function()
    }
    
    // decompiled from Move bytecode v6
}
module 0xbadbadbad::FriendHelper {
    public fun call_friend_function() : u64 {
        0xbadbadbad::FriendTestModule::friend_only_function()
    }
    
    // decompiled from Move bytecode v6
}
