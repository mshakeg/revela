module 0x1::TestModule {
    friend 0x1::FriendModule;
    friend 0x2::AnotherFriend;
    
    public(friend) fun test_function() {
        // This function can only be called by friend modules
    }
    
    public fun public_function() {
        // This is a regular public function
    }
}
