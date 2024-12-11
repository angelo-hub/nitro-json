import { type AnyMap, type HybridObject } from 'react-native-nitro-modules';

export interface Json extends HybridObject<{ ios: 'swift', android: 'kotlin' }> {
  parse(a: string): AnyMap
  stringify(a: AnyMap): string
}