(import :std/interface
        :std/contract
        :std/misc/alist)

(export #t)

(interface BucketMap
  (get-bucket (name :~ string?))
  (create-bucket! (name :~ string?)
         (opts :~ (maybe alist?) := #f))
  (delete-bucket! (name :~ string?))
  (bucket-exists? (name :~ string?))
  (list-buckets))

(interface ObjectMap
  (get  (name :~ string?))
  (put! (name :~ string?)
        (data :~ u8vector?)
        ; Additional options. See implementation for additional details
        (opts :~ (maybe alist?) := #f))
  (delete! (name :~ string?))
  ; src should follow `bucket/file/path` format. Destination should just be `file/path`.
  ; Copies *from* src to *dest* in this ObjectMap.
  (copy-to! (src :~ string?) (dest :~ string?))
  (list-objects))
