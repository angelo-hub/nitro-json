import { NitroModules } from "react-native-nitro-modules";
import type { Json } from './specs/Json.nitro'


export * from './specs/Json.nitro'

export const JSONParser = NitroModules.createHybridObject<Json>("Json")