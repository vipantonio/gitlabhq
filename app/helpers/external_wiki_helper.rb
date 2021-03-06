module ExternalWikiHelper
  def get_project_wiki_path(project)
    external_wiki_service = project.external_wiki
    if external_wiki_service
      external_wiki_service.properties['external_wiki_url']
    else
      namespace_project_wiki_path(project.namespace, project, :home)
    end
  end
end
