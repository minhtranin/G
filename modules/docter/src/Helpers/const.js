
const Env = use('Env')

const EMPLATE_CUSTOMER_ACTIVE_ACCOUNT = "d-3e41de0be207425ab10d384dc3cb9d9d"
const CUSTOMER_LINK_ACTIVE_ACCOUNT    = `${Env.get('LOCAL_API')}/api/v1/doctor/verifyEmail/`

module.exports = {
    EMPLATE_CUSTOMER_ACTIVE_ACCOUNT,
    CUSTOMER_LINK_ACTIVE_ACCOUNT
}