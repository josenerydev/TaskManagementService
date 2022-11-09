using Microsoft.AspNetCore.Mvc.ApiExplorer;
using Microsoft.Extensions.Options;
using Swashbuckle.AspNetCore.SwaggerGen;
using TaskManagementService.Web.Api.Extensions;
using TaskManagementService.Web.Api.Helpers;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();

builder.Services.AddApiVersioningExtension();
builder.Services.AddVersionedApiExplorerExtension();
builder.Services.AddSwaggerGenExtension();

builder.Services.AddTransient<IConfigureOptions<SwaggerGenOptions>, ConfigureSwaggerOptions>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    var provider = app.Services.GetRequiredService<IApiVersionDescriptionProvider>();
    app.UseSwaggerExtension(provider);
}

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

app.Run();
