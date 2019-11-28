
const Env = use('Env')

const EMPLATE_CUSTOMER_ACTIVE_ACCOUNT = "d-b209ffe103544e6483619e0c341427af"
const CUSTOMER_LINK_ACTIVE_ACCOUNT    = `${Env.get('LOCAL_API')}/api/v1/doctor/verifyEmail/`

module.exports = {
    EMPLATE_CUSTOMER_ACTIVE_ACCOUNT,
    CUSTOMER_LINK_ACTIVE_ACCOUNT
}