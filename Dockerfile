FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /app

# copy csproj and restore as distinct layers
COPY *.sln .
COPY CatBreedsApi/*.csproj ./CatBreedsApi/
RUN dotnet restore

# copy everything else and build app
COPY CatBreedsApi/. ./CatBreedsApi/
WORKDIR /app/CatBreedsApi
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS runtime
ENV ASPNETCORE_URLS=http://*:8080
WORKDIR /app
COPY --from=build /app/CatBreedsApi/out ./
ENTRYPOINT ["dotnet", "CatBreedsApi.dll"]
