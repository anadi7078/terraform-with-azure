# Build stage
FROM mcr.microsoft.com/dotnet/core/sdk:2.2-stretch AS build-env
WORKDIR /app

# copy and restore
COPY /src/Services/aspnet-core-dotnet-core/*.csproj ./
RUN dotnet restore

# copy and publish
COPY /src/Services/aspnet-core-dotnet-core/ ./
RUN dotnet publish -c Release -o out

# Runtime stage
FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-stretch-slim AS base
WORKDIR /app

# copy app
COPY --from=build-env /app/out .

# port
EXPOSE 80

# run app
ENTRYPOINT ["dotnet", "aspnet-core-dotnet-core.dll"]
