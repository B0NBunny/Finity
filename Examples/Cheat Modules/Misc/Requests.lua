local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()

local FinityReq = Finity:requestfunc(({ Url = "https://raw.githubusercontent.com/LocalSmail/Finity/main/discord", Method = "GET" }))

print(FinityReq.Body, FinityReq.Headers, FinityReq.StatusCode)

-- prints the message below if all was done without error
if FinityReq.StatusCode == 200 then
  print("successfully reached out to the given url!")
end
