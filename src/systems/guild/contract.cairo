#[dojo::contract]
mod guild_systems{
    use eternum_guild_module::systems::guild::interface::IGuildSystems;
    use eternum_guild_module::models::guild::Guild;
    #[external(v0)]
    impl GuildSystemsImpl of IGuildSystems<ContractState> {
        fn create_guild(self: @ContractState,world: IWorldDispatcher, guild_id: u128){
            set!(world, Guild{
                entity_id: world.uuid(),
                guild_id: guild_id
            })
        }
    }
}