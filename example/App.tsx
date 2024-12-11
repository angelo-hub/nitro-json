import { View, Text } from "react-native";
import * as NitroJson from "react-native-nitro-json";

export default function App() {

  React.useEffect(() => {
    const json = NitroJson.parse('{"name": "John", "age": 30}');
    console.log(json);
  }, []);
  return (
    <View
      style={{
        flex: 1,
        justifyContent: "center",
        alignItems: "center",
      }}
    >
      <Text>Universal React with Expo</Text>
    </View>
  );
}
