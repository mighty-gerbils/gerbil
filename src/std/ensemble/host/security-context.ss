;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble host security context
(import :std/interface
        ../interface
        ./types)
(export new-security-context)

(def (new-security-context (host : basic-host))
  => SecurityContext
  (SecurityContext
   (security-context host)))
