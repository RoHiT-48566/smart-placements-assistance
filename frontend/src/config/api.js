export const BASE_URL = `http://${window.location.hostname}:8000`;

const API_CONFIG = {
  BASE_URL,
  ENDPOINTS: {
    DASHBOARD: {
      GET_PLACEMENT_DATA: "/dashboard/get-data",
      GET_COMPANY_DATA: "/dashboard/get-company-data",
      ADD_PLACEMENT_DATA: "/dashboard/add-data",
      ADD_COMPANY_DATA: "/dashboard/add-company-data",
      DELETE_PLACEMENT_DATA: "/dashboard/delete-record",
      DELETE_COMPANY_DATA: "/dashboard/delete-company-data",
    },
    USER: {
      LOGIN: "/auth/login",
      REGISTER: "/auth/register",
      PROFILE: "/auth/profile",
    },
  },
};

export const getApiUrl = (endpoint) => `${API_CONFIG.BASE_URL}${endpoint}`;

export default API_CONFIG;
