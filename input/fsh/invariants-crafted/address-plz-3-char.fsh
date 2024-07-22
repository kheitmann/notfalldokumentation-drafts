Invariant: address-plz-3-char
Description: "Item 'Postleitzahl dreistellig' nur dreistellig angeben"
Severity: #warning
Expression: "address.empty() or (matches('^[0-9]{3}$'))"
