FROM mcr.microsoft.com/dotnet/sdk:7.0 AS build

WORKDIR /WEBapp

COPY ./*.csproj /WEBapp

RUN dotnet restore /WEBapp

COPY . /WEBapp

RUN dotnet publish -c Release -o out

FROM  mcr.microsoft.com/dotnet/sdk:7.0 

WORKDIR /WEBapp

COPY --from=build   /WEBapp/out .

ENTRYPOINT [ "dotnet",  "DockerDotNetApp.dll" ]
 