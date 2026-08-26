.class public Lim/doit/pro/model/Filter;
.super Lim/doit/pro/model/BaseEntity;
.source "Filter.java"


# static fields
.field private static final serialVersionUID:J = -0x4e0ae0d7db8b571dL


# instance fields
.field private EndAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_at"
    .end annotation
.end field

.field private assignTo:Lim/doit/pro/model/FilterAssignTo;

.field private contexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private deleted:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private groupBy:Lim/doit/pro/model/enums/GroupByType;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "group_by"
    .end annotation
.end field

.field private hidden:Ljava/util/Calendar;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private jsonAssignTo:Ljava/lang/String;

.field private jsonContexts:Ljava/lang/String;

.field private jsonOrderBy:Ljava/lang/String;

.field private jsonPriorityes:Ljava/lang/String;

.field private jsonProjects:Ljava/lang/String;

.field private jsonSenders:Ljava/lang/String;

.field private jsonTags:Ljava/lang/String;

.field private name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private orderBy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private pos:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private priorities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private projects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private senders:Lim/doit/pro/model/FilterSender;

.field private startAt:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "start_at"
    .end annotation
.end field

.field private status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lim/doit/pro/model/BaseEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAssignTo()Lim/doit/pro/model/FilterAssignTo;
    .locals 4

    .prologue
    .line 152
    iget-object v1, p0, Lim/doit/pro/model/Filter;->assignTo:Lim/doit/pro/model/FilterAssignTo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Filter;->jsonAssignTo:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/model/Filter;->jsonAssignTo:Ljava/lang/String;

    const-class v3, Lim/doit/pro/model/FilterAssignTo;

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/FilterAssignTo;

    iput-object v1, p0, Lim/doit/pro/model/Filter;->assignTo:Lim/doit/pro/model/FilterAssignTo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_0
    :goto_0
    iget-object v1, p0, Lim/doit/pro/model/Filter;->assignTo:Lim/doit/pro/model/FilterAssignTo;

    return-object v1

    .line 155
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getContexts()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v1, p0, Lim/doit/pro/model/Filter;->contexts:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Filter;->jsonContexts:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    iget-object v3, p0, Lim/doit/pro/model/Filter;->jsonContexts:Ljava/lang/String;

    const-class v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lim/doit/pro/model/Filter;->contexts:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :cond_0
    :goto_0
    iget-object v1, p0, Lim/doit/pro/model/Filter;->contexts:Ljava/util/ArrayList;

    return-object v1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getDeleted()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lim/doit/pro/model/Filter;->deleted:Ljava/util/Calendar;

    return-object v0
.end method

.method public getEndAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lim/doit/pro/model/Filter;->EndAt:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupBy()Lim/doit/pro/model/enums/GroupByType;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lim/doit/pro/model/Filter;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    return-object v0
.end method

.method public getHidden()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lim/doit/pro/model/Filter;->hidden:Ljava/util/Calendar;

    return-object v0
.end method

.method public getJsonAssignTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lim/doit/pro/model/Filter;->jsonAssignTo:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonContexts()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lim/doit/pro/model/Filter;->jsonContexts:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonOrderBy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lim/doit/pro/model/Filter;->jsonOrderBy:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonPriorityes()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lim/doit/pro/model/Filter;->jsonPriorityes:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonProjects()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lim/doit/pro/model/Filter;->jsonProjects:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonSenders()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lim/doit/pro/model/Filter;->jsonSenders:Ljava/lang/String;

    return-object v0
.end method

.method public getJsonTags()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lim/doit/pro/model/Filter;->jsonTags:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lim/doit/pro/model/Filter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderBy()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 93
    iget-object v6, p0, Lim/doit/pro/model/Filter;->orderBy:Ljava/util/ArrayList;

    invoke-static {v6}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lim/doit/pro/model/Filter;->jsonOrderBy:Ljava/lang/String;

    invoke-static {v6}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    iget-object v6, p0, Lim/doit/pro/model/Filter;->orderBy:Ljava/util/ArrayList;

    if-nez v6, :cond_0

    .line 95
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lim/doit/pro/model/Filter;->orderBy:Ljava/util/ArrayList;

    .line 98
    :cond_0
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    iget-object v6, p0, Lim/doit/pro/model/Filter;->jsonOrderBy:Ljava/lang/String;

    invoke-direct {v4, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 99
    .local v4, "jsonArr":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_2

    .line 113
    .end local v1    # "i":I
    .end local v4    # "jsonArr":Lorg/json/JSONArray;
    :cond_1
    :goto_1
    iget-object v6, p0, Lim/doit/pro/model/Filter;->orderBy:Ljava/util/ArrayList;

    return-object v6

    .line 100
    .restart local v1    # "i":I
    .restart local v4    # "jsonArr":Lorg/json/JSONArray;
    :cond_2
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .local v5, "orderbyItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 102
    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 103
    .local v2, "item":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lt v3, v6, :cond_4

    .line 107
    .end local v2    # "item":Lorg/json/JSONArray;
    .end local v3    # "j":I
    :cond_3
    iget-object v6, p0, Lim/doit/pro/model/Filter;->orderBy:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .restart local v2    # "item":Lorg/json/JSONArray;
    .restart local v3    # "j":I
    :cond_4
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 109
    .end local v1    # "i":I
    .end local v2    # "item":Lorg/json/JSONArray;
    .end local v3    # "j":I
    .end local v4    # "jsonArr":Lorg/json/JSONArray;
    .end local v5    # "orderbyItem":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getPos()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lim/doit/pro/model/Filter;->pos:J

    return-wide v0
.end method

.method public getPriorities()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v1, p0, Lim/doit/pro/model/Filter;->priorities:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Filter;->jsonPriorityes:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    iget-object v3, p0, Lim/doit/pro/model/Filter;->jsonPriorityes:Ljava/lang/String;

    const-class v4, [Ljava/lang/Integer;

    invoke-virtual {v1, v3, v4}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lim/doit/pro/model/Filter;->priorities:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :cond_0
    :goto_0
    iget-object v1, p0, Lim/doit/pro/model/Filter;->priorities:Ljava/util/ArrayList;

    return-object v1

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getProjects()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 213
    iget-object v1, p0, Lim/doit/pro/model/Filter;->projects:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Filter;->jsonProjects:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    iget-object v3, p0, Lim/doit/pro/model/Filter;->jsonProjects:Ljava/lang/String;

    const-class v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lim/doit/pro/model/Filter;->projects:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    iget-object v1, p0, Lim/doit/pro/model/Filter;->projects:Ljava/util/ArrayList;

    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSenders()Lim/doit/pro/model/FilterSender;
    .locals 4

    .prologue
    .line 137
    iget-object v1, p0, Lim/doit/pro/model/Filter;->senders:Lim/doit/pro/model/FilterSender;

    if-nez v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Filter;->jsonSenders:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/model/Filter;->jsonSenders:Ljava/lang/String;

    const-class v3, Lim/doit/pro/model/FilterSender;

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/FilterSender;

    iput-object v1, p0, Lim/doit/pro/model/Filter;->senders:Lim/doit/pro/model/FilterSender;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    :cond_0
    :goto_0
    iget-object v1, p0, Lim/doit/pro/model/Filter;->senders:Lim/doit/pro/model/FilterSender;

    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getStartAt()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lim/doit/pro/model/Filter;->startAt:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lim/doit/pro/model/Filter;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v1, p0, Lim/doit/pro/model/Filter;->tags:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    iget-object v1, p0, Lim/doit/pro/model/Filter;->jsonTags:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 230
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    iget-object v3, p0, Lim/doit/pro/model/Filter;->jsonTags:Ljava/lang/String;

    const-class v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lim/doit/pro/model/Filter;->tags:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    iget-object v1, p0, Lim/doit/pro/model/Filter;->tags:Ljava/util/ArrayList;

    return-object v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAssignTo(Lim/doit/pro/model/FilterAssignTo;)V
    .locals 0
    .param p1, "assignTo"    # Lim/doit/pro/model/FilterAssignTo;

    .prologue
    .line 163
    iput-object p1, p0, Lim/doit/pro/model/Filter;->assignTo:Lim/doit/pro/model/FilterAssignTo;

    .line 164
    return-void
.end method

.method public setContexts(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lim/doit/pro/model/Filter;->contexts:Ljava/util/ArrayList;

    .line 210
    return-void
.end method

.method public setDeleted(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "deleted"    # Ljava/util/Calendar;

    .prologue
    .line 73
    iput-object p1, p0, Lim/doit/pro/model/Filter;->deleted:Ljava/util/Calendar;

    .line 74
    return-void
.end method

.method public setEndAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "endAt"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lim/doit/pro/model/Filter;->EndAt:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setGroupBy(Lim/doit/pro/model/enums/GroupByType;)V
    .locals 0
    .param p1, "groupBy"    # Lim/doit/pro/model/enums/GroupByType;

    .prologue
    .line 89
    iput-object p1, p0, Lim/doit/pro/model/Filter;->groupBy:Lim/doit/pro/model/enums/GroupByType;

    .line 90
    return-void
.end method

.method public setHidden(Ljava/util/Calendar;)V
    .locals 0
    .param p1, "hidden"    # Ljava/util/Calendar;

    .prologue
    .line 125
    iput-object p1, p0, Lim/doit/pro/model/Filter;->hidden:Ljava/util/Calendar;

    .line 126
    return-void
.end method

.method public setJsonAssignTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonAssignTo"    # Ljava/lang/String;

    .prologue
    .line 251
    iput-object p1, p0, Lim/doit/pro/model/Filter;->jsonAssignTo:Ljava/lang/String;

    .line 252
    return-void
.end method

.method public setJsonContexts(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonContexts"    # Ljava/lang/String;

    .prologue
    .line 275
    iput-object p1, p0, Lim/doit/pro/model/Filter;->jsonContexts:Ljava/lang/String;

    .line 276
    return-void
.end method

.method public setJsonOrderBy(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonOrderBy"    # Ljava/lang/String;

    .prologue
    .line 243
    iput-object p1, p0, Lim/doit/pro/model/Filter;->jsonOrderBy:Ljava/lang/String;

    .line 244
    return-void
.end method

.method public setJsonPriorityes(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonPriorityes"    # Ljava/lang/String;

    .prologue
    .line 267
    iput-object p1, p0, Lim/doit/pro/model/Filter;->jsonPriorityes:Ljava/lang/String;

    .line 268
    return-void
.end method

.method public setJsonProjects(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonProjects"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lim/doit/pro/model/Filter;->jsonProjects:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setJsonSenders(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonSenders"    # Ljava/lang/String;

    .prologue
    .line 259
    iput-object p1, p0, Lim/doit/pro/model/Filter;->jsonSenders:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setJsonTags(Ljava/lang/String;)V
    .locals 0
    .param p1, "jsonTags"    # Ljava/lang/String;

    .prologue
    .line 291
    iput-object p1, p0, Lim/doit/pro/model/Filter;->jsonTags:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lim/doit/pro/model/Filter;->name:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setOrderBy(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "orderBy":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lim/doit/pro/model/Filter;->orderBy:Ljava/util/ArrayList;

    .line 118
    return-void
.end method

.method public setPos(J)V
    .locals 1
    .param p1, "pos"    # J

    .prologue
    .line 81
    iput-wide p1, p0, Lim/doit/pro/model/Filter;->pos:J

    .line 82
    return-void
.end method

.method public setPriorities(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, "priorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lim/doit/pro/model/Filter;->priorities:Ljava/util/ArrayList;

    .line 195
    return-void
.end method

.method public setProjects(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "projects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lim/doit/pro/model/Filter;->projects:Ljava/util/ArrayList;

    .line 225
    return-void
.end method

.method public setSenders(Lim/doit/pro/model/FilterSender;)V
    .locals 0
    .param p1, "senders"    # Lim/doit/pro/model/FilterSender;

    .prologue
    .line 148
    iput-object p1, p0, Lim/doit/pro/model/Filter;->senders:Lim/doit/pro/model/FilterSender;

    .line 149
    return-void
.end method

.method public setStartAt(Ljava/lang/String;)V
    .locals 0
    .param p1, "startAt"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lim/doit/pro/model/Filter;->startAt:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lim/doit/pro/model/Filter;->status:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setTags(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lim/doit/pro/model/Filter;->tags:Ljava/util/ArrayList;

    .line 240
    return-void
.end method
