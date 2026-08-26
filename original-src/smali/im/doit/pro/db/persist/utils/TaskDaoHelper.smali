.class public Lim/doit/pro/db/persist/utils/TaskDaoHelper;
.super Ljava/lang/Object;
.source "TaskDaoHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSqlEmails(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "emails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 419
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 420
    .local v1, "emailCondition":Ljava/lang/String;
    const/4 v3, 0x0

    .line 421
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 420
    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 422
    return-object v1

    .line 416
    .end local v1    # "emailCondition":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 417
    .local v0, "email":Ljava/lang/String;
    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\',"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private static parseCustomFilterContexts(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 8
    .param p0, "filter"    # Lim/doit/pro/model/Filter;
    .param p1, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 336
    invoke-virtual {p0}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    invoke-virtual {p0}, Lim/doit/pro/model/Filter;->getContexts()Ljava/util/ArrayList;

    move-result-object v0

    .line 338
    .local v0, "filterContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 339
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 340
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 341
    const-string v4, "context"

    invoke-virtual {p1, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 363
    .end local v0    # "filterContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 343
    .restart local v0    # "filterContexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v1    # "id":Ljava/lang/String;
    :cond_1
    const-string v4, "context"

    invoke-virtual {p1, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 345
    .end local v1    # "id":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 347
    .local v3, "inConditionTmp":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 352
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    .local v2, "inCondition":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 355
    const-string v4, "("

    invoke-virtual {p1, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    const-string v5, "context"

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    .line 356
    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->in(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 357
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 358
    const-string v4, " OR "

    invoke-virtual {p1, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    const-string v5, "context"

    invoke-virtual {v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 360
    :cond_4
    const-string v4, ")"

    invoke-virtual {p1, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 347
    .end local v2    # "inCondition":Ljava/lang/String;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    .restart local v1    # "id":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 349
    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\',"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private parseCustomFilterEnd(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 7
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    .line 309
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getEndAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getEndAt()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "c":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getBoxStartAt(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 312
    .local v4, "minDate":J
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getBoxEndAt(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 313
    .local v2, "maxDate":J
    const-string v1, "end_at"

    invoke-virtual {p2, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v6, "end_at"

    invoke-virtual {v1, v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 315
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "maxDate":J
    .end local v4    # "minDate":J
    :cond_0
    return-void
.end method

.method private parseCustomFilterForwardedBy(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 4
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 396
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "sender_email"

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 398
    const-string v0, "in"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/model/FilterSender;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 400
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 402
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->getSqlEmails(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->in(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 405
    :cond_2
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 406
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->neq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 407
    :cond_3
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 408
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getSenders()Lim/doit/pro/model/FilterSender;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/FilterSender;->getEmail()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->getSqlEmails(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->nin(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0
.end method

.method private static parseCustomFilterPriority(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 8
    .param p0, "filter"    # Lim/doit/pro/model/Filter;
    .param p1, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 318
    invoke-virtual {p0}, Lim/doit/pro/model/Filter;->getPriorities()Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 319
    invoke-virtual {p0}, Lim/doit/pro/model/Filter;->getPriorities()Ljava/util/ArrayList;

    move-result-object v3

    .line 320
    .local v3, "priorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 321
    const-string v4, "priority"

    invoke-virtual {p1, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v5

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 333
    .end local v3    # "priorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    :goto_0
    return-void

    .line 322
    .restart local v3    # "priorities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v5, :cond_0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .local v1, "in":Ljava/lang/StringBuilder;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_2

    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "inCondition":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 330
    const-string v4, "priority"

    invoke-virtual {p1, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->in(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 324
    .end local v2    # "inCondition":Ljava/lang/String;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 325
    .local v0, "id":I
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private parseCustomFilterProjects(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 9
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 366
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getProjects()Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/utils/CollectionUtils;->isNotEmpty(Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getProjects()Ljava/util/ArrayList;

    move-result-object v0

    .line 368
    .local v0, "filterProjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v6, :cond_2

    .line 369
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 370
    .local v4, "project":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 371
    const-string v5, "project"

    invoke-virtual {p2, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 393
    .end local v0    # "filterProjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "project":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 373
    .restart local v0    # "filterProjects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "project":Ljava/lang/String;
    :cond_1
    const-string v5, "project"

    invoke-virtual {p2, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 375
    .end local v4    # "project":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    .local v3, "inConditionTmp":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 382
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "inCondition":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v2, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 385
    const-string v5, "("

    invoke-virtual {p2, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v5

    const-string v6, "project"

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v5

    .line 386
    invoke-virtual {v5, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->in(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 387
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 388
    const-string v5, " OR "

    invoke-virtual {p2, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v5

    const-string v6, "project"

    invoke-virtual {v5, v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 390
    :cond_4
    const-string v5, ")"

    invoke-virtual {p2, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0

    .line 377
    .end local v2    # "inCondition":Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 378
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 379
    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\',"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private parseCustomFilterStart(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 7
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    .line 426
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStartAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStartAt()Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "c":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getBoxStartAt(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 429
    .local v4, "minDate":J
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->getBoxEndAt(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 430
    .local v2, "maxDate":J
    const-string v1, "start_at"

    invoke-virtual {p2, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v6, "start_at"

    invoke-virtual {v1, v6}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 432
    .end local v0    # "c":Ljava/lang/String;
    .end local v2    # "maxDate":J
    .end local v4    # "minDate":J
    :cond_0
    return-void
.end method

.method private parseCustomFilterWithStatus(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V
    .locals 3
    .param p1, "filter"    # Lim/doit/pro/model/Filter;
    .param p2, "sql"    # Lim/doit/pro/db/persist/utils/SQLBuilder;

    .prologue
    const/4 v2, 0x0

    .line 435
    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStatus()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 436
    const-string v0, "completed"

    invoke-virtual {p1}, Lim/doit/pro/model/Filter;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    const-string v0, "completed"

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    const-string v0, "completed"

    invoke-virtual {p2, v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0
.end method


# virtual methods
.method public allByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 153
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "project"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 154
    return-object v0
.end method

.method public byGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 221
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 222
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 223
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 224
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 225
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 226
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 227
    return-object v0
.end method

.method public byProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->allByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 165
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 166
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 167
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 168
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 169
    return-object v0
.end method

.method public bySender(Lim/doit/pro/model/Contact;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "contact"    # Lim/doit/pro/model/Contact;

    .prologue
    .line 303
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 304
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "sender"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 305
    return-object v0
.end method

.method public byStartAt(Ljava/util/Calendar;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 6
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 291
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 292
    .local v2, "start":Ljava/util/Calendar;
    invoke-static {v2}, Lim/doit/pro/utils/DateUtils;->startOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 293
    invoke-static {p1}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 294
    .local v0, "end":Ljava/util/Calendar;
    invoke-static {v0}, Lim/doit/pro/utils/DateUtils;->endOfDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    .line 295
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 296
    .local v1, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notRepeater()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const-string v4, "attribute"

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    sget-object v4, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v4}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    .line 297
    const-string v4, "start_at"

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const-string v4, "start_at"

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    .line 298
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 299
    return-object v1
.end method

.method public byTaskContext(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 200
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 201
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "context"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 202
    return-object v0
.end method

.method public completed()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 112
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 113
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 114
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 115
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 116
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 117
    return-object v0
.end method

.method public completedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 231
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 232
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 233
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 234
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 235
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 236
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 237
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 238
    return-object v0
.end method

.method public completedByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 173
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 174
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "project"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 175
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 176
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 177
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 178
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 179
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 180
    return-object v0
.end method

.method public fromSubTask(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "fromSubTask"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 52
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "from_subtask"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 53
    return-object v0
.end method

.method public getAllHaveReminderTasks()Ljava/lang/String;
    .locals 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "reminders"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNotNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterClause(Lim/doit/pro/model/Filter;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4
    .param p1, "filter"    # Lim/doit/pro/model/Filter;

    .prologue
    const/4 v3, 0x0

    .line 252
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 253
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "hidden"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "archived"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 254
    const-string v2, "trashed"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 255
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->parseCustomFilterWithStatus(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 256
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->parseCustomFilterStart(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 257
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->parseCustomFilterEnd(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 258
    invoke-static {p1, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->parseCustomFilterPriority(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 259
    invoke-static {p1, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->parseCustomFilterContexts(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 260
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->parseCustomFilterProjects(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 261
    invoke-direct {p0, p1, v0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->parseCustomFilterForwardedBy(Lim/doit/pro/model/Filter;Lim/doit/pro/db/persist/utils/SQLBuilder;)V

    .line 262
    return-object v0
.end method

.method public getSearchByKeyClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 271
    if-nez p1, :cond_0

    .line 272
    new-instance v3, Ljava/lang/RuntimeException;

    .line 273
    const-string v4, "getSearchByKeyClause keys and values invalid."

    .line 272
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    :cond_0
    new-instance v2, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 276
    .local v2, "sb":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v3, "deleted"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const-string v4, "hidden"

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 277
    array-length v1, p1

    .line 278
    .local v1, "length":I
    if-lez v1, :cond_1

    .line 279
    const-string v3, " AND "

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 280
    const-string v3, "("

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 281
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lt v0, v3, :cond_2

    .line 284
    add-int/lit8 v3, v1, -0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 285
    const-string v3, ")"

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 287
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 282
    .restart local v0    # "i":I
    :cond_2
    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->like(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v3

    const-string v4, " OR "

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 281
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public inbox()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 57
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->inbox:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public next()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 87
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->next:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public notArchiveNotDeleteByContext(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 206
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 207
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 208
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 209
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 210
    const-string v1, "context"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 211
    return-object v0
.end method

.method public notCompleteByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-virtual {p0, p1}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->byProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 195
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 196
    return-object v0
.end method

.method public notCompletedByStartAt(Ljava/util/Calendar;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 61
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notRepeater()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 62
    sget-object v1, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "start_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method public notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 130
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 131
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 132
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 133
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 134
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 135
    const-string v1, "completed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 136
    return-object v0
.end method

.method public notDeadByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 216
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 217
    return-object v0
.end method

.method public notDeadByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 159
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "project"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 160
    return-object v0
.end method

.method public notRepeater()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 141
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "repeater"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 142
    return-object v0
.end method

.method public repeater()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 146
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 147
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "repeater"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNotNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 148
    return-object v0
.end method

.method public scheduled()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4

    .prologue
    .line 98
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfToday()Ljava/util/Calendar;

    move-result-object v0

    .line 99
    .local v0, "minStartAt":Ljava/util/Calendar;
    const/4 v1, 0x5

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 100
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "attribute"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    sget-object v2, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v2}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 101
    const-string v2, " AND "

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 102
    const-string v2, "start_at"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->repeater()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->or(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    .line 100
    return-object v1
.end method

.method public someday()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 107
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->noplan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public today()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notRepeater()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 68
    sget-object v1, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "start_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 69
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTodayMills()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 67
    return-object v0
.end method

.method public todayOverdue()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4

    .prologue
    .line 73
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->today()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "end_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "end_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 74
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTodayMills()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 73
    return-object v0
.end method

.method public tomorrow()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4

    .prologue
    .line 91
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notRepeater()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Lim/doit/pro/db/persist/utils/SQLBuilder;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 92
    sget-object v1, Lim/doit/pro/model/enums/Attribute;->plan:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "start_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 93
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->startOfTomorrowMills()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "start_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 94
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTomorrowMills()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 91
    return-object v0
.end method

.method public trash()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 121
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 122
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 123
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 124
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 125
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 126
    return-object v0
.end method

.method public trashedByGoal(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 242
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 243
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 244
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 245
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 246
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 247
    const-string v1, "goal"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 248
    return-object v0
.end method

.method public trashedByProject(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 3
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 184
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 185
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "project"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 186
    const-string v1, "deleted"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 187
    const-string v1, "hidden"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 188
    const-string v1, "archived"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 189
    const-string v1, "trashed"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 190
    return-object v0
.end method

.method public uuidAndRepeatNoClause(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;
    .param p2, "repeatNo"    # Ljava/lang/String;

    .prologue
    .line 40
    new-instance v0, Lim/doit/pro/db/persist/utils/SQLBuilder;

    invoke-direct {v0}, Lim/doit/pro/db/persist/utils/SQLBuilder;-><init>()V

    .line 41
    .local v0, "sql":Lim/doit/pro/db/persist/utils/SQLBuilder;
    const-string v1, "uuid"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->append(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 42
    invoke-static {p2}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    const-string v1, "repeat_no"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->isNull()Lim/doit/pro/db/persist/utils/SQLBuilder;

    .line 47
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const-string v1, "repeat_no"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    goto :goto_0
.end method

.method public waiting()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 2

    .prologue
    .line 78
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->notDead()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "attribute"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    sget-object v1, Lim/doit/pro/model/enums/Attribute;->waiting:Lim/doit/pro/model/enums/Attribute;

    invoke-virtual {v1}, Lim/doit/pro/model/enums/Attribute;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->eq(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    return-object v0
.end method

.method public waitingOverdue()Lim/doit/pro/db/persist/utils/SQLBuilder;
    .locals 4

    .prologue
    .line 82
    invoke-virtual {p0}, Lim/doit/pro/db/persist/utils/TaskDaoHelper;->waiting()Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "end_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->gt(I)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    const-string v1, "end_at"

    invoke-virtual {v0, v1}, Lim/doit/pro/db/persist/utils/SQLBuilder;->and(Ljava/lang/String;)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 83
    invoke-static {}, Lim/doit/pro/utils/DateUtils;->endOfTodayMills()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lim/doit/pro/db/persist/utils/SQLBuilder;->lte(J)Lim/doit/pro/db/persist/utils/SQLBuilder;

    move-result-object v0

    .line 82
    return-object v0
.end method
