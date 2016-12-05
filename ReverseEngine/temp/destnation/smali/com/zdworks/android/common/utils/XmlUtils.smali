.class public Lcom/zdworks/android/common/utils/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# static fields
.field private static final CHARTSET:Ljava/lang/String; = "UTF-8"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildFromXML(Ljava/io/InputStream;)Landroid/os/Bundle;
    .locals 3
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    .line 105
    .local v0, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 106
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v1

    .line 107
    .local v1, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const-string v2, "UTF-8"

    invoke-interface {v1, p0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 109
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/zdworks/android/common/utils/XmlUtils;->proccessNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    return-object v2
.end method

.method public static buildFromXML(Ljava/io/InputStream;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 14
    .parameter "in"
    .parameter "container"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    if-nez p1, :cond_0

    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 34
    .restart local p1
    :cond_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 35
    .local v3, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v13, 0x1

    invoke-virtual {v3, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 36
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 37
    .local v12, xpp:Lorg/xmlpull/v1/XmlPullParser;
    const-string v13, "UTF-8"

    invoke-interface {v12, p0, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 38
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 39
    .local v7, stack:Ljava/util/Stack;,"Ljava/util/Stack<Landroid/os/Bundle;>;"
    invoke-virtual {v7, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/4 v9, 0x0

    .line 42
    .local v9, tag:Ljava/lang/String;
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 45
    .local v2, eventType:I
    :goto_0
    invoke-virtual {v7}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 46
    .local v1, currentContainer:Landroid/os/Bundle;
    packed-switch v2, :pswitch_data_0

    .line 89
    :cond_1
    :goto_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    .line 90
    goto :goto_0

    .line 48
    :pswitch_0
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 50
    .local v8, startTag:Ljava/lang/String;
    move-object v9, v8

    .line 51
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 52
    .local v11, value:Ljava/lang/Object;
    if-nez v11, :cond_2

    .line 53
    invoke-virtual {v7, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 57
    :cond_2
    instance-of v13, v11, Landroid/os/Bundle;

    if-eqz v13, :cond_3

    move-object v0, v11

    .line 58
    check-cast v0, Landroid/os/Bundle;

    .line 59
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v7, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 60
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_3
    instance-of v13, v11, Ljava/util/ArrayList;

    if-eqz v13, :cond_6

    move-object v6, v11

    .line 61
    check-cast v6, Ljava/util/ArrayList;

    .line 62
    .local v6, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    .line 63
    .restart local v0       #bundle:Landroid/os/Bundle;
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_4

    .line 64
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Bundle;

    .line 65
    .local v10, template:Landroid/os/Bundle;
    invoke-virtual {v10}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundle:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .line 66
    .restart local v0       #bundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 67
    .local v5, key:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v5, v13}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_2

    .line 70
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #key:Ljava/lang/String;
    .end local v10           #template:Landroid/os/Bundle;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #bundle:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_5
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    invoke-virtual {v7, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 75
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v6           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    :cond_6
    invoke-virtual {v7, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 79
    .end local v8           #startTag:Ljava/lang/String;
    .end local v11           #value:Ljava/lang/Object;
    :pswitch_1
    const/4 v9, 0x0

    .line 80
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_1

    .line 83
    :pswitch_2
    if-eqz v9, :cond_1

    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/zdworks/android/common/utils/XmlUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v9, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :pswitch_3
    return-object p1

    .line 46
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"

    .prologue
    .line 232
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 233
    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 234
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 235
    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 236
    const-string v0, "\""

    const-string v1, "&quot;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 237
    return-object p0
.end method

.method public static getHttpXmlContent(Lorg/apache/http/HttpResponse;)Landroid/os/Bundle;
    .locals 1
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v0}, Lcom/zdworks/android/common/utils/XmlUtils;->getHttpXmlContent(Lorg/apache/http/HttpResponse;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getHttpXmlContent(Lorg/apache/http/HttpResponse;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8
    .parameter "response"
    .parameter "bundle"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 169
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 170
    .local v2, in:Ljava/io/InputStream;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 172
    :try_start_0
    invoke-static {v2, p1}, Lcom/zdworks/android/common/utils/XmlUtils;->buildFromXML(Ljava/io/InputStream;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 175
    .local v4, result:Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v4

    .end local v4           #result:Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v5

    .line 178
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v3, msg:Ljava/lang/StringBuilder;
    const/16 v5, 0x100

    new-array v0, v5, [B

    .line 181
    .local v0, buff:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, count:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 182
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 184
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP response error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getXmlContent(Lorg/apache/http/HttpResponse;)Landroid/os/Bundle;
    .locals 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 194
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 195
    .local v2, in:Ljava/io/InputStream;
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 197
    :try_start_0
    invoke-static {v2}, Lcom/zdworks/android/common/utils/XmlUtils;->buildFromXML(Ljava/io/InputStream;)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 200
    .local v4, result:Landroid/os/Bundle;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object v4

    .end local v4           #result:Landroid/os/Bundle;
    :catchall_0
    move-exception v5

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v5

    .line 203
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .local v3, msg:Ljava/lang/StringBuilder;
    const/16 v5, 0x100

    new-array v0, v5, [B

    .line 206
    .local v0, buff:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, count:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 207
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 209
    :cond_1
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP response error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", msg: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static proccessNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9
    .parameter "xpp"
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v5, result:Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 117
    .local v6, text:Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 119
    .local v1, eventType:I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual {v5}, Landroid/os/Bundle;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    if-eqz v6, :cond_4

    .line 149
    .end local v6           #text:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 121
    .restart local v6       #text:Ljava/lang/String;
    :pswitch_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-static {p0, p1}, Lcom/zdworks/android/common/utils/XmlUtils;->proccessNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 123
    .local v4, nodeObject:Ljava/lang/Object;
    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 124
    check-cast v4, Ljava/lang/String;

    .end local v4           #nodeObject:Ljava/lang/Object;
    invoke-virtual {v5, p1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v4       #nodeObject:Ljava/lang/Object;
    :cond_0
    move-object v3, v4

    .line 126
    check-cast v3, Landroid/os/Bundle;

    .line 127
    .local v3, node:Landroid/os/Bundle;
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 128
    invoke-virtual {v5, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 129
    .local v2, lastNode:Ljava/lang/Object;
    instance-of v7, v2, Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v0, bundles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    check-cast v2, Landroid/os/Bundle;

    .end local v2           #lastNode:Ljava/lang/Object;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-virtual {v5, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    goto :goto_0

    .line 134
    .end local v0           #bundles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    .restart local v2       #lastNode:Ljava/lang/Object;
    :cond_1
    instance-of v7, v2, Ljava/util/ArrayList;

    if-eqz v7, :cond_2

    .line 135
    check-cast v2, Ljava/util/ArrayList;

    .end local v2           #lastNode:Ljava/lang/Object;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .restart local v2       #lastNode:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v5, p1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 140
    .end local v2           #lastNode:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v5, p1, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v3           #node:Landroid/os/Bundle;
    .end local v4           #nodeObject:Ljava/lang/Object;
    :cond_4
    move-object v6, v5

    .line 149
    goto :goto_1

    .line 152
    :pswitch_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/zdworks/android/common/utils/XmlUtils;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 153
    invoke-virtual {v5, p1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "content"

    .prologue
    .line 241
    const-string v0, "&lt;"

    const-string v1, "<"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 242
    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 243
    const-string v0, "&amp;"

    const-string v1, "&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 244
    const-string v0, "&apos;"

    const-string v1, "\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 245
    const-string v0, "&quot;"

    const-string v1, "\""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 246
    return-object p0
.end method
