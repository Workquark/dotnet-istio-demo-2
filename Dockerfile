# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-alpine
COPY release .
ENTRYPOINT ["dotnet", "profile.dll"]
