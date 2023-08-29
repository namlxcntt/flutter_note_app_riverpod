abstract class Mapper<Entity,Domain>{
  Entity mapFromDomain(Domain domain);
  Domain mapFromEntity(Entity entity);
}