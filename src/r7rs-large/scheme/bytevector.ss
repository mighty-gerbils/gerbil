;;; -*- Gerbil -*-
;;; © vyzo
;;; :scheme/bytevector -- R7RS TANGERINE bytevectr library

(import :std/misc/bytes
        :std/text/utf8
        :std/text/utf16
        :std/text/utf32
        :scheme/base)
(export endianness
        (rename: native-endianness* native-endianness)

        make-bytevector
        bytevector-length
        (rename: u8vector-fill! bytevector-fill!)
        bytevector-copy!

        bytevector-u8-ref
        bytevector-u8-set!

        bytevector-s8-ref
        bytevector-s8-set!

        bytevector-uint-ref
        bytevector-uint-set!
        bytevector-sint-ref
        bytevector-sint-set!

        bytevector->uint-list
        bytevector->sint-list
        uint-list->bytevector
        sint-list->bytevector

        bytevector-u16-ref
        bytevector-u16-native-ref
        bytevector-u16-set!
        bytevector-u16-native-set!

        bytevector-s16-ref
        bytevector-s16-native-ref
        bytevector-s16-set!
        bytevector-s16-native-set!

        bytevector-u32-ref
        bytevector-u32-native-ref
        bytevector-u32-set!
        bytevector-u32-native-set!

        bytevector-s32-ref
        bytevector-s32-native-ref
        bytevector-s32-set!
        bytevector-s32-native-set!

        bytevector-u64-ref
        bytevector-u64-native-ref
        bytevector-u64-set!
        bytevector-u64-native-set!

        bytevector-s64-ref
        bytevector-s64-native-ref
        bytevector-s64-set!
        bytevector-s64-native-set!

        bytevector-ieee-single-ref
        bytevector-ieee-single-set!
        bytevector-ieee-single-native-ref
        bytevector-ieee-single-native-set!
        bytevector-ieee-double-ref
        bytevector-ieee-double-set!
        bytevector-ieee-double-native-ref
        bytevector-ieee-double-native-set!

        string->utf8 utf8->string
        string->utf16 utf16->string
        string->utf32 utf32->string)

(def (native-endianness*)
  native-endianness)
