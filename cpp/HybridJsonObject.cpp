#include "HybridJsonSpec.hpp"
#include <NitroModules/AnyMap.hpp>
#include <NitroModules/NitroLogger.hpp>
#include <simdjson.hpp>

namespace margelo::nitro::json
{
  class HybridJsonObject : public virtual HybridJsonSpec:
  {
  public:
    std::shared_ptr<AnyMap> HybridJsonObject::parse(const std::string &a)
    {
      simdjson::dom::parser parser;
      simdjson::dom::element doc = parser.parse(a);
      return std::make_shared<AnyMap>(doc.get_object());
    }

  public:
    std::string HybridJsonObject::stringify(const std::shared_ptr<AnyMap> &a)
    {
      simdjson::dom::parser parser;
      simdjson::dom::element doc = parser.parse(a);
      return doc.to_string();
    }
  }
}
