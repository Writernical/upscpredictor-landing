<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9">
<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
<xsl:template match="/">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>UPSC Predictor - Sitemap</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <style type="text/css">
        body {
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen, Ubuntu, sans-serif;
            color: #1e293b;
            background: #f8fafc;
            margin: 0;
            padding: 2rem;
        }
        .container {
            max-width: 900px;
            margin: 0 auto;
            background: white;
            border-radius: 12px;
            box-shadow: 0 4px 20px rgba(0,0,0,0.08);
            padding: 2rem;
        }
        h1 {
            color: #0f172a;
            font-size: 1.75rem;
            margin-bottom: 0.5rem;
        }
        .subtitle {
            color: #64748b;
            margin-bottom: 2rem;
        }
        .brand {
            color: #3b82f6;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th {
            background: #f1f5f9;
            color: #475569;
            font-weight: 600;
            text-align: left;
            padding: 0.75rem 1rem;
            font-size: 0.85rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        td {
            padding: 0.75rem 1rem;
            border-bottom: 1px solid #e2e8f0;
            font-size: 0.9rem;
        }
        tr:hover td {
            background: #f8fafc;
        }
        a {
            color: #3b82f6;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
        .priority-high { color: #16a34a; font-weight: 600; }
        .priority-med { color: #ca8a04; font-weight: 600; }
        .priority-low { color: #64748b; }
        .footer {
            margin-top: 2rem;
            text-align: center;
            color: #94a3b8;
            font-size: 0.85rem;
        }
        .count {
            background: #dbeafe;
            color: #1d4ed8;
            padding: 0.25rem 0.75rem;
            border-radius: 50px;
            font-size: 0.8rem;
            font-weight: 600;
            margin-left: 0.5rem;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>UPSC<span class="brand">Predictor</span> Sitemap <span class="count"><xsl:value-of select="count(sitemap:urlset/sitemap:url)"/> URLs</span></h1>
        <p class="subtitle">This sitemap helps search engines discover and index our pages.</p>
        <table>
            <thead>
                <tr>
                    <th>URL</th>
                    <th>Last Modified</th>
                    <th>Change Freq</th>
                    <th>Priority</th>
                </tr>
            </thead>
            <tbody>
                <xsl:for-each select="sitemap:urlset/sitemap:url">
                    <xsl:sort select="sitemap:priority" order="descending"/>
                    <tr>
                        <td>
                            <a href="{sitemap:loc}"><xsl:value-of select="sitemap:loc"/></a>
                        </td>
                        <td><xsl:value-of select="sitemap:lastmod"/></td>
                        <td><xsl:value-of select="sitemap:changefreq"/></td>
                        <td>
                            <xsl:choose>
                                <xsl:when test="sitemap:priority &gt;= 0.8">
                                    <span class="priority-high"><xsl:value-of select="sitemap:priority"/></span>
                                </xsl:when>
                                <xsl:when test="sitemap:priority &gt;= 0.5">
                                    <span class="priority-med"><xsl:value-of select="sitemap:priority"/></span>
                                </xsl:when>
                                <xsl:otherwise>
                                    <span class="priority-low"><xsl:value-of select="sitemap:priority"/></span>
                                </xsl:otherwise>
                            </xsl:choose>
                        </td>
                    </tr>
                </xsl:for-each>
            </tbody>
        </table>
        <div class="footer">
            <p>© 2026 UPSC Predictor | <a href="https://upscpredictor.in">Back to Homepage</a></p>
        </div>
    </div>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
