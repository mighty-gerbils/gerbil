;;; -*- Gerbil -*-
;;; © vyzo
;;; Protobuf language prelude

(import :std/protobuf/macros
        (for-syntax :std/parser/base
                    :std/sugar
                    :std/protobuf/proto-grammar
                    :std/stxutil))
(export (except-out #t begin-module%%)
        (rename: begin-module%% %%begin-module)
        (import: :std/protobuf/macros)
        (for-syntax read-module-body))

(defrules begin-module%% ()
  ((_ . body)
   (%%begin-module (import (only-in :gerbil/core load-module)
                           (for-syntax (only-in :gerbil/core load-module)))
                   (export #t) . body)))

(defsyntax (begin-protobuf stx)
  (def (parse-body body)
    (let lp ((rest body) (pkg #f) (imports []) (defs []))
      (match rest
        ([hd . rest]
         (syntax-case hd (package @import message enum)
           ((package id)
            (if pkg
              (raise-syntax-error #f "Duplicate package declaration" hd)
              (lp rest #'id imports defs)))
           ((@import . _)
            (lp rest pkg (cons hd imports) defs))
           ((message . _)
            (lp rest pkg imports (cons hd defs)))
           ((enum . _)
            (lp rest pkg imports (cons hd defs)))
           (_ (lp rest pkg imports defs))))
        (else
         (values pkg (reverse imports) (reverse defs))))))

  (def (simplify-defs defs)
    (foldr fold-simplify-def [] defs))

  (def (fold-simplify-def defn r)
    (syntax-case defn (message enum)
      ((enum id body ...)
       (let (fields (simplify-enum-body #'(body ...)))
         (with-syntax ((new-body fields))
           (let (new-defn
                 (syntax/loc defn
                   (enum id . new-body)))
             (cons new-defn r)))))
      ((message id body ...)
       (let ((values nested fields)
             (simplify-message-body #'id #'(body ...)))
         (with-syntax ((new-body fields))
           (let (new-defn
                 (syntax/loc defn
                   (message id . new-body)))
             (foldr fold-simplify-def
                    (cons new-defn r)
                    nested)))))
      (_ r)))

  (def (simplify-enum-body body)
    (filter (lambda (defn)
              (syntax-case defn (field)
                ((field . _) #t)
                (_ #f)))
            body))

  (def (simplify-message-body id body)
    (let lp ((rest body) (nested []) (fields []) (subst []))
      (match rest
        ([hd . rest]
         (syntax-case hd (message enum field map oneof)
           ((enum enum-id . enum-body)
            (with-syntax ((new-enum-id (format-id #'enum-id "~a.~a" id #'enum-id)))
              (let (new-enum
                    (syntax/loc hd
                      (enum new-enum-id . enum-body)))
                (lp rest
                    (cons new-enum nested)
                    fields
                    (cons (cons #'enum-id #'new-enum-id)
                          subst)))))
           ((message message-id . message-body)
            (with-syntax ((new-message-id (format-id #'message-id "~a.~a" id #'message-id)))
              (let (new-message
                    (syntax/loc hd
                      (message new-message-id . message-body)))
                (lp rest
                    (cons new-message nested)
                    fields
                    (cons (cons #'message-id #'new-message-id)
                          subst)))))
           ((field . _)
            (lp rest nested (cons hd fields) subst))
           ((map . _)
            (lp rest nested (cons hd fields) subst))
           ((oneof . _)
            (lp rest nested (cons hd fields) subst))
           (_ (lp rest nested fields subst))))
        (else
         (values
           (if (null? subst)
             (reverse nested)
             (foldl (cut fold-message-subst subst <> <>) [] nested))
           (if (null? subst)
             (reverse fields)
             (foldl (cut fold-message-subst subst <> <>) [] fields)))))))

  (def (fold-message-subst subst hd r)
    (syntax-case hd (enum message field oneof map)
      ((enum . _)
       (cons hd r))
      ((message message-id message-body ...)
       (with-syntax ((new-message-body
                      (foldr (cut fold-message-subst subst <> <>)
                             [] #'(message-body ...))))
         (let (new-message
               (syntax/loc hd
                 (message message-id . new-message-body)))
           (cons new-message r))))
      ((field specifier type id key options)
       (with-syntax ((new-type (apply-subst subst #'type)))
         (let (new-field
               (syntax/loc hd
                 (field specifier new-type id key options)))
           (cons new-field r))))
      ((oneof id oneof-fields ...)
       (with-syntax ((new-fields (map (cut oneof-field-apply-subst subst <>)
                                      #'(oneof-fields ...))))
         (let (new-oneof
               (syntax/loc hd
                 (oneof id . new-fields)))
           (cons new-oneof r))))
      ((map key-type value-type id key options)
       (with-syntax ((new-value-type (apply-subst subst #'value-type)))
         (let (new-map
               (syntax/loc hd
                 (map key-type new-value-type id key options)))
           (cons new-map r))))))


  (def (apply-subst subst id)
    (let lp ((rest subst))
      (match rest
        ([[xid . yid] . rest]
         (if (bound-identifier=? xid id)
           yid
           (let ((str (symbol->string (stx-e id)))
                 (pre (string-append (symbol->string (stx-e xid)) ".")))
             (if (string-prefix? pre str)
               (format-id id "~a.~a" yid (substring str (string-length pre) (string-length str)))
               (lp rest)))))
        (else id))))

  (def (oneof-field-apply-subst subst hd)
    (syntax-case hd (field)
      ((field type id key)
       (with-syntax ((new-type (apply-subst subst #'type)))
         (syntax/loc hd
           (field new-type id key))))))

  (def (order-defs defs)
    (def (->xdef defn)
      (syntax-case defn (message enum)
        ((message id field ...)
         [defn #'id (foldl fold-field-deps [] #'(field ...)) ...])
        ((enum id . body)
         [defn #'id])))

    (def (fold-field-deps hd r)
      (syntax-case hd (field oneof map)
        ((field specifier type id key options)
         (cons #'type r))
        ((oneof id oneof-field ...)
         (foldl fold-oneof-field-deps r #'(oneof-field ...)))
        ((map key-type value-type id key options)
         (cons #'value-type r))))

    (def (fold-oneof-field-deps hd r)
      (syntax-case hd (field)
        ((field type id key)
         (cons #'type r))))

    (let (xdefs (map ->xdef defs))
      (let lp ((rest xdefs) (r []))
        (match rest
          ([hd . rest]
           (with ([defn id . deps] hd)
             (let lp2 ((rest2 rest) (r2 []))
               (match rest2
                 ([hd2 . rest2]
                  (with ([defn2 id2 . deps2] hd2)
                    (if (find (cut bound-identifier=? <> id2) deps)
                      (lp (cons* hd2 hd (foldl cons rest2 r2))
                          r)
                      (lp2 rest2 (cons hd2 r2)))))
                 (else
                  (lp rest (cons hd r)))))))
          (else
           (map car (reverse r)))))))

  (def (expand-def proto-syntax defn)
    (def (expand-enum-field hd)
      (syntax-case hd (field)
        ((field id key options)
         #'(id key))))

    (def (expand-oneof-field hd)
      (syntax-case hd (field)
        ((field type id key)
         #'(id key type))))

    (def (fold-expand-message-field hd r)
      (syntax-case hd (field oneof map)
        ((field specifier type id key options)
         (syntax-case #'specifier (required optional repeated)
           (required
            (cons* required: #'(id key type) r))
           (optional
            (cons* optional: #'(id key type) r))
           (repeated
            (let (meta-type (syntax-local-value #'type false))
              (if (and (scalar-type? meta-type)
                       (not (memq (type-name meta-type) '(string bytes)))
                       (or (eq? proto-syntax 'proto3)
                           (assgetq 'packed (or (syntax->datum #'options) []))))
                (cons* packed: #'(id key type) r)
                (cons* repeated: #'(id key type) r))))
           (#f
            (if (eq? proto-syntax 'proto3)
              (cons* optional: #'(id key type) r)
              (raise-syntax-error #f "Missing field specifier" hd)))))
        ((oneof id oneof-field ...)
         (with-syntax (((oneof-field ...)
                        (map expand-oneof-field #'(oneof-field ...))))
           (cons* oneof: #'(id oneof-field ...) r)))
        ((map key-type value-type id key options)
         (cons* map: #'(id key key-type value-type) r))))

    (syntax-case defn (enum message)
      ((enum id body ...)
       (with-syntax ((expanded-body (map expand-enum-field #'(body ...))))
         (syntax/loc defn
           (defenum id . expanded-body))))
      ((message id body ...)
       (with-syntax ((expanded-body (foldr fold-expand-message-field [] #'(body ...))))
         (syntax/loc defn
           (defmessage id . expanded-body))))))

  (def (expand-import expr)
    (syntax-case expr (public weak)
      ((_ #f path)
       (with-syntax ((path (expand-import-path #'path)))
         (syntax/loc expr
           (import (protobuf-in path)))))
      ((_ public path)
       (with-syntax* ((path (expand-import-path #'path))
                      (do-import
                       (syntax/loc expr
                         (import path)))
                      (do-export
                       (syntax/loc expr
                         (export (import: path)))))
         (syntax/loc expr
           (begin do-import do-export))))))

  (def (expand-import-path stx-path)
    (let (path (stx-e stx-path))
      (if (eq? (string-ref path 0) #\:) ; library path
        (format-id stx-path "~a" path)
        stx-path)))

  (def (expand-pkg pkg defs)
    (def (->id defn)
      (syntax-case defn ()
        ((_ id . _) #'id)))
    (with-syntax ((pkg-id pkg)
                  (def-ids (map ->id defs)))
      (syntax/loc pkg
        (defpackage pkg-id . def-ids))))

  (syntax-case stx ()
    ((_ proto-syntax body ...)
     (let* (((values pkg imports defs)
             (parse-body #'(body ...)))
            (defs (simplify-defs defs))
            (defs (order-defs defs))
            (do-def (map (cut expand-def (stx-e #'proto-syntax) <>) defs))
            (do-import (map expand-import imports))
            (do-pkg (if pkg [(expand-pkg pkg defs)] [])))
       ['begin do-import ... do-def ... do-pkg ...]))))

(defrules @import ())
(defrules weak ())
(defrules public ())
(defrules package ())
(defrules option ())
(defrules message ())
(defrules field ())
(defrules required ())
(defrules optional ())
(defrules repeated ())
(defrules oneof ())
(defrules map ())
(defrules extensions ())
(defrules reserved ())
(defrules enum ())
(defrules extend ())
(defrules service ())
(defrules rpc ())
(defrules stream ())

(begin-syntax
  (def (read-module-body port)
    (try
     (let (pb (parse-protobuf port))
       (case (token-t pb)
         ((Protobuf)
          [(token-e pb)])
         (($$)
          [])
         (else
          (raise-syntax-error #f "Bad syntax; unexpected token" (token->syntax pb)))))
     (catch (parse-error? exn)
       (apply raise-syntax-error #f
              (string-append "Bad syntax; " (error-message exn))
              (map token->syntax (error-irritants exn)))))))
