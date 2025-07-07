// claims_mapper.jsonnet

local session = std.extVar("session");
local claims = std.extVar("claims");
local expire = std.extVar("expire");

{
  claims: {
    iss: "http://127.0.0.1:4433/",
    sub: session.identity.id,
    email: session.identity.traits.email,
    name: session.identity.traits.name.first + " " + session.identity.traits.name.last,
    exp: expire,
    store_id: std.get(session.identity.metadata_public, "storeId", null),
  }
}
