;;; -*- Gerbil -*-
;;; © vyzo
;;; backwards compatibilty shim; will be removed for v0.19
(import :gerbil/runtime/interface)
(export interface
        interface-out
        cast try-cast satisfies?
        interface-instance? interface-instance-object &interface-instance-object
        interface-descriptor? interface-descriptor-type interface-descriptor-methods
        interface-cast-error?)
