SELECT avg(assistance_requests.created_at - assistance_requests.started_at) As average_wait_time
from assistance_requests;