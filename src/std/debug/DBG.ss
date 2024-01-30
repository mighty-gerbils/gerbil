;;; -*- Gerbil -*-
;;; © fare
;;; DBG utility

(export DBG DBG-printer DBG-helper)

(import
  (only-in :gerbil/runtime DBG DBG-printer DBG-helper)
  (only-in :std/misc/repr pr))

(DBG-printer pr)
