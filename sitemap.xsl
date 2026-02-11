<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
    
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>Sitemap - UPSC Predictor</title>
                <style>
                    * { margin: 0; padding: 0; box-sizing: border-box; }
                    body { font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, sans-serif; background: #f8fafc; color: #1e293b; padding: 2rem; }
                    .container { max-width: 900px; margin: 0 auto; }
                    h1 { font-size: 1.75rem; margin-bottom: 0.5rem; color: #0f172a; }
                    .subtitle { color: #64748b; margin-bottom: 2rem; }
                    .subtitle a { color: #3b82f6; text-decoration: none; }
                    table { width: 100%; border-collapse: collapse; background: white; border-radius: 12px; overflow: hidden; box-shadow: 0 4px 20px rgba(0,0,0,0.08); }
                    th { background: linear-gradient(135deg, #3b82f6 0%, #1d4ed8 100%); color: white; text-align: left; padding: 1rem; font-weight: 600; }
                    td { padding: 0.75rem 1rem; border-bottom: 1px solid #e2e8f0; }
                    tr:last-child td { border-bottom: none; }
                    tr:hover td { background: #f1f5f9; }
                    a { color: #3b82f6; text-decoration: none; }
                    a:hover { text-decoration: underline; }
                    .priority { display: inline-block; padding: 0.25rem 0.5rem; border-radius: 4px; font-size: 0.8rem; font-weight: 600; }
                    .priority-high { background: #dcfce7; color: #166534; }
                    .priority-medium { background: #dbeafe; color: #1d4ed8; }
                    .count { background: #dbeafe; color: #1d4ed8; padding: 0.25rem 0.75rem; border-radius: 50px; font-size: 0.85rem; font-weight: 600; margin-left: 0.5rem; }
                </style>
            </head>
            <body>
                <div class="container">
                    <h1>📍 Sitemap <span class="count"><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/> URLs</span></h1>
                    <p class="subtitle">XML Sitemap for <a href="https://upscpredictor.in">upscpredictor.in</a> • For search engines like Google, Bing</p>
                    
                    <table>
                        <tr>
                            <th>URL</th>
                            <th>Last Modified</th>
                            <th>Priority</th>
                        </tr>
                        <xsl:for-each select="sitemap:urlset/sitemap:url">
                            <tr>
                                <td>
                                    <a href="{sitemap:loc}">
                                        <xsl:value-of select="sitemap:loc"/>
                                    </a>
                                </td>
                                <td><xsl:value-of select="sitemap:lastmod"/></td>
                                <td>
                                    <xsl:choose>
                                        <xsl:when test="sitemap:priority >= 0.9">
                                            <span class="priority priority-high"><xsl:value-of select="sitemap:priority"/></span>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <span class="priority priority-medium"><xsl:value-of select="sitemap:priority"/></span>
                                        </xsl:otherwise>
                                    </xsl:choose>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
