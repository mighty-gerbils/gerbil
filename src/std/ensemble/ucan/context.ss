;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan capability context
(import :std/error
        :std/interface
        :std/io/interface
        :std/crypto/pkey
        :std/time/precise
        :std/iter
        ../interface/ucan
        ./db
        ./cap
        ./did
        ./serde)
(export new-capability-context)


(def (new-capability-context (path : :string)
                             (passphrase  : :string))
  => CapabilityContext
  (CapabilityContext
   (capability-db path passphrase)))

(implement
  (Closer
   (capability-db
    (close __db-close)))
  (CapabilityContext
   (capability-db
    (add-principal!  __db-add-private-key!)
    (list-principals __db-list-private-keys)
    (public-key      __db-get-public-key)
    (sign!
     (lambda (self token)
       (sign-token! token
                    (cut __db-get-private-key self <>)
                    (cut __db-get-public-key  self <>))))
    (verify
     (lambda (self token subject)
       (: (let/cc return
            ;; verify the token first
            (let (result
                  (verify-token token
                                (cut __db-get-public-key self <>)))
              (unless (!OK? result)
                (return result)))
            ;; verify it is rooted in the subject
            ;; or in one of our roots or input anchors
            (when subject
              (when (token-rooted-at? token subject)
                (return !OK)))
            (for (root (db-get-roots self))
              (when (token-rooted-at? token root)
                (return !OK)))
            (for (anchor (db-get-subject-input-anchors self subject))
              (when (token-anchored-at? token anchor)
                (return !OK)))
            !AnchorVerificationError)
          VerificationResult)))
    (save-token! __db-put-issued-token!)
    (list-tokens __db-list-issued-tokens)
    (add-output-anchor!
     (lambda (self token subject)
       (let (result (verify-token token
                                  (cut __db-get-public-key self <>)))
         (unless (!OK? result)
           (raise-bad-argument sign-token! "invalid token"
                               (VerificationError-reason result))))
       (if subject
         (db-add-subject-output-anchor! self subject token)
         (db-add-root-output-anchor! self token))))
    (remove-output-anchor!
     (lambda (self token subject)
       (if subject
         (db-remove-subject-output-anchor! self subject token)
         (db-remove-root-output-anchor! self token))))
    (list-output-anchors
     (lambda (self filter subject)
       (let (root (for/fold (r []) (t (db-get-root-output-anchors self))
                    (if (filter t)
                      (cons t r)
                      r)))
         (if subject
           (for/fold (r root) (t (db-get-subject-output-anchors self subject))
             (if (filter t)
               (cons t r)
               r))
           root))))
    (add-input-anchor!
     (lambda (self token subject)
       (let (result (verify-token token
                                  (cut __db-get-public-key self <>)))
         (unless (!OK? result)
           (raise-bad-argument sign-token! "invalid token"
                               (VerificationError-reason result))))
       (if subject
         (db-add-subject-input-anchor! self subject token)
         (db-add-root-input-anchor! self token))))
    (remove-input-anchor!
     (lambda (self token subject)
       (if subject
         (db-remove-subject-input-anchor! self subject token)
         (db-remove-root-input-anchor! self token))))
    (list-input-anchors
     (lambda (self filter subject)
       (let (root (for/fold (r []) (t (db-get-root-input-anchors self))
                    (if (filter t)
                      (cons t r)
                      r)))
         (if subject
           (for/fold (r root) (t (db-get-subject-input-anchors self subject))
             (if (filter t)
               (cons t r)
               r))
           root))))
    (add-root!    __db-add-root!)
    (remove-root! __db-remove-root!)
    (list-roots   __db-get-roots))))
