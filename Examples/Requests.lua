local Finity = loadstring(game:HttpGet("https://raw.githubusercontent.com/LocalSmail/Finity/main/Library"))()

local FinityReq = Finity:requestfunc(({ Url = "https://raw.githubusercontent.com/LocalSmail/Finity/main/discord", Method = "GET" }))

print("Content: "..FinityReq.Body.."\n" + "Headers: "..FinityReq.Headers.."\n" + "Stauts Code: "..FinityReq.StatusCode) -- debugging print (simulation

-- prints the message below if all was done without error
if FinityReq.StatusCode == 200 then
  print("successfully reached out to the given url!")
end
