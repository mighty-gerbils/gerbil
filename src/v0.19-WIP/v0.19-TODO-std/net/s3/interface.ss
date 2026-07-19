(import :std/misc/alist)

(export #t)


;; TODO return types
(interface S3
  (get-bucket (name : :string))
  (create-bucket! (name : :string))
  (delete-bucket! (name : :string))
  (bucket-exists? (name : :string))
  (list-buckets))

;; TODO return types
(interface S3Bucket
  (get  (name : :string))
  (exists? (name : :string))
  (put! (name : :string)
        (data : :u8vector))
  (delete! (name : :string))
  ; src should follow `bucket/file/path` format. Destination should just be `file/path`.
  ; Copies *from* src to *dest* in this ObjectMap.
  (copy-to! (src : :string) (dest : :string))
  (list-objects))
