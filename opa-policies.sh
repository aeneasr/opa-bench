#!/usr/bin/env bash
cd ../..
(cd rego/core; curl -X PUT --data-binary @effect.rego localhost:8181/v1/policies/core/effect)
(cd rego/core; curl -X PUT --data-binary @role.rego localhost:8181/v1/policies/core/role)
(cd rego/condition; curl -X PUT --data-binary @boolean.rego localhost:8181/v1/policies/condition/boolean)
(cd rego/condition; curl -X PUT --data-binary @cidr.rego localhost:8181/v1/policies/condition/cidr)
(cd rego/condition; curl -X PUT --data-binary @condition.rego localhost:8181/v1/policies/condition/condition)
(cd rego/condition; curl -X PUT --data-binary @helpers.rego localhost:8181/v1/policies/condition/helpers)
(cd rego/condition; curl -X PUT --data-binary @resource_contains.rego localhost:8181/v1/policies/condition/resource_contains)
(cd rego/condition; curl -X PUT --data-binary @string_equal.rego localhost:8181/v1/policies/condition/string_equal)
(cd rego/condition; curl -X PUT --data-binary @string_match.rego localhost:8181/v1/policies/condition/string_match)
(cd rego/condition; curl -X PUT --data-binary @string_pairs_equal.rego localhost:8181/v1/policies/condition/string_pairs_equal)
(cd rego/condition; curl -X PUT --data-binary @string_subject_equal.rego localhost:8181/v1/policies/condition/string_subject_equal)

(cd rego/exact; curl -X PUT --data-binary @main.rego localhost:8181/v1/policies/exact/main)
(cd rego/regex; curl -X PUT --data-binary @main.rego localhost:8181/v1/policies/regex/main)
(cd rego/glob; curl -X PUT --data-binary @main.rego localhost:8181/v1/policies/glob/main)
