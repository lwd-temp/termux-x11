add_library(tirpc STATIC
        "libtirpc/src/auth_none.c"
        "libtirpc/src/auth_unix.c"
        "libtirpc/src/authunix_prot.c"
        "libtirpc/src/binddynport.c"
        "libtirpc/src/clnt_bcast.c"
        "libtirpc/src/clnt_dg.c"
        "libtirpc/src/clnt_generic.c"
        "libtirpc/src/clnt_perror.c"
        "libtirpc/src/clnt_raw.c"
        "libtirpc/src/clnt_simple.c"
        "libtirpc/src/clnt_vc.c"
        "libtirpc/src/rpc_dtablesize.c"
        "libtirpc/src/getnetconfig.c"
        "libtirpc/src/getnetpath.c"
        "libtirpc/src/mt_misc.c"
        "libtirpc/src/pmap_clnt.c"
        "libtirpc/src/pmap_getport.c"
        "libtirpc/src/pmap_prot.c"
        "libtirpc/src/pmap_prot2.c"
        "libtirpc/src/pmap_rmt.c"
        "libtirpc/src/rpc_prot.c"
        "libtirpc/src/rpc_commondata.c"
        "libtirpc/src/rpc_callmsg.c"
        "libtirpc/src/rpc_generic.c"
        "libtirpc/src/rpc_soc.c"
        "libtirpc/src/rpcb_clnt.c"
        "libtirpc/src/rpcb_prot.c"
        "libtirpc/src/svc.c"
        "libtirpc/src/svc_auth.c"
        "libtirpc/src/svc_dg.c"
        "libtirpc/src/svc_auth_unix.c"
        "libtirpc/src/svc_auth_none.c"
        "libtirpc/src/svc_generic.c"
        "libtirpc/src/svc_raw.c"
        "libtirpc/src/svc_simple.c"
        "libtirpc/src/svc_vc.c"
        "libtirpc/src/getpeereid.c"
        "libtirpc/src/debug.c"
        "libtirpc/src/xdr.c"
        "libtirpc/src/xdr_rec.c"
        "libtirpc/src/xdr_array.c"
        "libtirpc/src/xdr_mem.c"
        "libtirpc/src/xdr_reference.c")
target_include_directories(tirpc PUBLIC "libtirpc/tirpc")
target_compile_options(tirpc PRIVATE "-DPORTMAP" "-DINET6=1" "-DHAVE_FEATURES_H=1"
        "-DHAVE_GETRPCBYNAME=1" "-DHAVE_GETRPCBYNUMBER=1" "-DHAVE_SETRPCENT=1" "-DHAVE_ENDRPCENT=1"
        "-DHAVE_GETRPCENT=1" "-UHAVE_GSSAPI_GSSAPI_EXT_H" "-UAUTHDES_SUPPORT" "-Dquad_t=long long"
        "-Du_quad_t=unsigned long long" "-Dgetdtablesize()=sysconf(_SC_OPEN_MAX)" "-D_GNU_SOURCE"
        "-Wall" "-pipe" "-fPIC" "-DPIC" "-Wno-deprecated-non-prototype" "-Wno-macro-redefined")
