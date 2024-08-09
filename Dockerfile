FROM mcr.microsoft.com/dotnet/aspnet:8.0-nanoserver-ltsc2022 AS base
WORKDIR /app
EXPOSE 8080
EXPOSE 8081

FROM mcr.microsoft.com/dotnet/sdk:8.0-nanoserver-ltsc2022 AS build
ARG BUILD_CONFIGURATION=Release
WORKDIR /src
COPY ["DockerTestApi/DockerTestApi.csproj", "DockerTestApi/"]
RUN dotnet restore "DockerTestApi/DockerTestApi.csproj"
COPY . .
WORKDIR "/src/DockerTestApi"
RUN dotnet build "DockerTestApi.csproj" -c %BUILD_CONFIGURATION% -o /app/build

FROM build AS publish
ARG BUILD_CONFIGURATION=Release
RUN dotnet publish "DockerTestApi.csproj" -c %BUILD_CONFIGURATION% -o /app/publish /p:UseAppHost=false

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "DockerTestApi.dll"]
