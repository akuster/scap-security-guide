#!/bin/bash

# profiles = xccdf_org.ssgproject.content_profile_ospp
# remediation = none

grep -h 'arch=b32.*EACCES' ../audit_openat_o_creat.rules ../audit_openat_o_trunc_write.rules ../audit_open.rules > /etc/audit/rules.d/ordered_by_arch_error.rules
grep -h 'arch=b32.*EPERM' ../audit_openat_o_creat.rules ../audit_openat_o_trunc_write.rules ../audit_open.rules >> /etc/audit/rules.d/ordered_by_arch_error.rules
grep -h 'arch=b64.*EACCES' ../audit_openat_o_creat.rules ../audit_openat_o_trunc_write.rules ../audit_open.rules >> /etc/audit/rules.d/ordered_by_arch_error.rules
grep -h 'arch=b64.*EPERM' ../audit_openat_o_creat.rules ../audit_openat_o_trunc_write.rules ../audit_open.rules >> /etc/audit/rules.d/ordered_by_arch_error.rules
