# SMTP: Simple Mail Tranfser Protocol

    (import :std/net/smtp)

    > (def mail (smtp-connect "localhost:8025"))
    > (send-mail mail "<postfix@drewc.ca>" "me@drewc.ca"
        To: "All Users <me@drewc.ca>"
        From: "No Reply <no@reply.here>"
        Subject: "This is a subject"
        "Body not by itself")
    ("250 2.0.0 Ok: queued as 1E29D10201C2")
    
    > (send-mail mail "<postfix@drewc.ca>" "me@drewc.ca" "No headers just body")
    ("250 2.0.0 Ok: queued as 1111A10201C2")
    
    > (send-mail mail "<postfix@drewc.ca>" "me@drewc.ca"
      [Subject: "Headers can be a plist"] From: "Nested even!"
      "because who knows")
    ("250 2.0.0 Ok: queued as 5C4F810201C2")
    
    > (SMTP-QUIT mail)
    ("221 2.0.0 Bye")

