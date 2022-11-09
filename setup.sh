# Set execute permission
# chmod +x script-name-here.sh

# To run script
# ./setup.sh

mkdir TaskManagementService
cd TaskManagementService
dotnet new sln
mkdir tests
mkdir src
cd src
dotnet new classlib -f net6.0 --name TaskManagementService.Common
dotnet new classlib -f net6.0 --name TaskManagementService.Data
dotnet new classlib -f net6.0 --name TaskManagementService.Data.SqlServer
dotnet new classlib -f net6.0 --name TaskManagementService.Web.Api.Models
dotnet new classlib -f net6.0 --name TaskManagementService.Web.Common
dotnet new webapi -f net6.0 --name TaskManagementService.Web.Api
cd ../tests
dotnet new xunit -f net6.0 --name TaskManagementService.Common.Tests
dotnet new xunit -f net6.0 --name TaskManagementService.Data.SqlServer.IntegrationTests
dotnet new xunit -f net6.0 --name TaskManagementService.Data.Tests
dotnet new xunit -f net6.0 --name TaskManagementService.Web.Api.IntegrationTest
dotnet new xunit -f net6.0 --name TaskManagementService.Web.Api.Tests
dotnet new xunit -f net6.0 --name TaskManagementService.Web.Common.Tests
cd ../src/TaskManagementService.Data.SqlServer
dotnet add reference ../TaskManagementService.Common/TaskManagementService.Common.csproj
dotnet add reference ../TaskManagementService.Data/TaskManagementService.Data.csproj
cd ../../src/TaskManagementService.Web.Api
dotnet add reference ../TaskManagementService.Common/TaskManagementService.Common.csproj
dotnet add reference ../TaskManagementService.Data/TaskManagementService.Data.csproj
dotnet add reference ../TaskManagementService.Data.SqlServer/TaskManagementService.Data.SqlServer.csproj
dotnet add reference ../TaskManagementService.Web.Api.Models/TaskManagementService.Web.Api.Models.csproj
dotnet add reference ../TaskManagementService.Web.Common/TaskManagementService.Web.Common.csproj
cd ../../src/TaskManagementService.Web.Common
dotnet add reference ../TaskManagementService.Common/TaskManagementService.Common.csproj
dotnet add reference ../TaskManagementService.Data/TaskManagementService.Data.csproj
cd ../../
dotnet sln add src/TaskManagementService.Common/TaskManagementService.Common.csproj
dotnet sln add src/TaskManagementService.Data/TaskManagementService.Data.csproj
dotnet sln add src/TaskManagementService.Data.SqlServer/TaskManagementService.Data.SqlServer.csproj
dotnet sln add src/TaskManagementService.Web.Api.Models/TaskManagementService.Web.Api.Models.csproj
dotnet sln add src/TaskManagementService.Web.Common/TaskManagementService.Web.Common.csproj
dotnet sln add src/TaskManagementService.Web.Api/TaskManagementService.Web.Api.csproj
dotnet sln add tests/TaskManagementService.Common.Tests/TaskManagementService.Common.Tests.csproj
dotnet sln add tests/TaskManagementService.Data.SqlServer.IntegrationTests/TaskManagementService.Data.SqlServer.IntegrationTests.csproj
dotnet sln add tests/TaskManagementService.Data.Tests/TaskManagementService.Data.Tests.csproj
dotnet sln add tests/TaskManagementService.Web.Api.IntegrationTest/TaskManagementService.Web.Api.IntegrationTest.csproj
dotnet sln add tests/TaskManagementService.Web.Api.Tests/TaskManagementService.Web.Api.Tests.csproj
dotnet sln add tests/TaskManagementService.Web.Common.Tests/TaskManagementService.Web.Common.Tests.csproj