.class public Lim/doit/pro/api/DoitAPI;
.super Ljava/lang/Object;
.source "DoitAPI.java"


# static fields
.field private static final DEFAULT_MAX_SYNC_SIZE:I = 0x200


# instance fields
.field private mApiConfig:Lim/doit/pro/api/APIConfig;

.field private mHttpApi:Lim/doit/pro/api/HttpApi;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lim/doit/pro/api/APIConfig;

    invoke-direct {v0}, Lim/doit/pro/api/APIConfig;-><init>()V

    iput-object v0, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    .line 82
    new-instance v0, Lim/doit/pro/api/HttpApiWithBasicAuth;

    iget-object v1, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    invoke-virtual {v1}, Lim/doit/pro/api/APIConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 83
    iget-object v2, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    invoke-virtual {v2}, Lim/doit/pro/api/APIConfig;->getScopePort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lim/doit/pro/api/HttpApiWithBasicAuth;-><init>(Ljava/lang/String;I)V

    .line 82
    iput-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    .line 84
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->initCredentials()V

    .line 85
    return-void
.end method

.method private afterDownloadFailed(Lim/doit/pro/api/Response;ZZ)V
    .locals 3
    .param p1, "response"    # Lim/doit/pro/api/Response;
    .param p2, "isCheckout"    # Z
    .param p3, "tryAgain"    # Z

    .prologue
    .line 457
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    new-instance v0, Landroid/content/Intent;

    const-string v1, "im.doit.pro.service.DoitSyncService.SYNC_ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "response_code"

    iget v2, p1, Lim/doit/pro/api/Response;->code:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 462
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private afterDownloadSuccess(ZLim/doit/pro/api/Response;)V
    .locals 16
    .param p1, "isCheckout"    # Z
    .param p2, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 465
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lim/doit/pro/api/DoitAPI;->isFailed(Lim/doit/pro/api/Response;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    new-instance v12, Lcom/google/gson/JsonParser;

    invoke-direct {v12}, Lcom/google/gson/JsonParser;-><init>()V

    move-object/from16 v0, p2

    iget-object v13, v0, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v12, v13}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v12

    .line 469
    invoke-virtual {v12}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v5

    .line 470
    .local v5, "root":Lcom/google/gson/JsonObject;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lim/doit/pro/api/DoitAPI;->parseAndSave(Lcom/google/gson/JsonObject;)V

    .line 473
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v4

    .line 474
    .local v4, "parserUtil":Lim/doit/pro/api/parser/ParserUtil;
    const-string v12, "usn"

    invoke-virtual {v4, v5, v12}, Lim/doit/pro/api/parser/ParserUtil;->getLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v6

    .line 475
    .local v6, "serverListMaxUsn":J
    const-string v12, "max_usn"

    invoke-virtual {v4, v5, v12}, Lim/doit/pro/api/parser/ParserUtil;->getLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v8

    .line 476
    .local v8, "serverMaxUsn":J
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 477
    .local v2, "maxUsn":J
    const-string v12, "server_time"

    invoke-virtual {v4, v5, v12}, Lim/doit/pro/api/parser/ParserUtil;->getLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v10

    .line 478
    .local v10, "serverTime":J
    invoke-static {v2, v3}, Lim/doit/pro/utils/PrefUtils;->saveMaxUSN(J)V

    .line 479
    invoke-static {v10, v11}, Lim/doit/pro/utils/PrefUtils;->saveServerTime(J)V

    .line 480
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "listUsn : "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", maxUsn : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 481
    const-string v13, ", localMaxUsn : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getMaxUSN()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 480
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 482
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getMaxUSN()J

    move-result-wide v12

    cmp-long v12, v8, v12

    if-lez v12, :cond_0

    .line 484
    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lim/doit/pro/api/DoitAPI;->download(ZZ)Lim/doit/pro/api/Response;

    goto :goto_0
.end method

.method private afterPurchaseUpload(Lim/doit/pro/model/DPurchase;Lim/doit/pro/api/Response;)V
    .locals 5
    .param p1, "purchase"    # Lim/doit/pro/model/DPurchase;
    .param p2, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 626
    if-nez p2, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    invoke-virtual {p2}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 630
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->purchaseDao:Lim/doit/pro/db/persist/PurchaseDao;

    invoke-virtual {p1}, Lim/doit/pro/model/DPurchase;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/PurchaseDao;->destroyByUuid(Ljava/lang/String;)V

    .line 631
    invoke-direct {p0, p2}, Lim/doit/pro/api/DoitAPI;->updateUserInfo(Lim/doit/pro/api/Response;)V

    .line 633
    :cond_2
    invoke-virtual {p2}, Lim/doit/pro/api/Response;->isError()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 634
    new-instance v3, Lcom/google/gson/JsonParser;

    invoke-direct {v3}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v4, p2, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    .line 635
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 636
    .local v2, "root":Lcom/google/gson/JsonObject;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    .line 637
    .local v1, "parser":Lim/doit/pro/api/parser/ParserUtil;
    const-string v3, "code"

    invoke-virtual {v1, v2, v3}, Lim/doit/pro/api/parser/ParserUtil;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 638
    .local v0, "code":Ljava/lang/String;
    const-string v3, "E400010"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 639
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v3

    iget-object v3, v3, Lim/doit/pro/db/Persist;->purchaseDao:Lim/doit/pro/db/persist/PurchaseDao;

    invoke-virtual {p1}, Lim/doit/pro/model/DPurchase;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/db/persist/PurchaseDao;->destroyByUuid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V
    .locals 7
    .param p1, "response"    # Lim/doit/pro/api/Response;
    .param p2, "log"    # Lim/doit/pro/model/OpLog;
    .param p3, "localUsn"    # J
    .param p5, "entity"    # Lim/doit/pro/model/BaseEntity;

    .prologue
    .line 1239
    if-eqz p1, :cond_2

    .line 1240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "afterUpload response code : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p1, Lim/doit/pro/api/Response;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1241
    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isError()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v2

    iget-object v2, v2, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v2, p2}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    .line 1243
    invoke-direct {p0, p1, p5}, Lim/doit/pro/api/DoitAPI;->saveSyncLog(Lim/doit/pro/api/Response;Lim/doit/pro/model/BaseEntity;)V

    .line 1245
    :cond_1
    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->isSuccess(Lim/doit/pro/api/Response;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1246
    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->getUsnAfterUploadSuccess(Lim/doit/pro/api/Response;)Ljava/lang/Long;

    move-result-object v1

    .line 1247
    .local v1, "usn":Ljava/lang/Long;
    if-eqz v1, :cond_2

    .line 1248
    invoke-direct {p0, p5, v1}, Lim/doit/pro/api/DoitAPI;->updateEntityUsn(Lim/doit/pro/model/BaseEntity;Ljava/lang/Long;)V

    .line 1249
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lim/doit/pro/api/DoitAPI;->updateMaxUsnAfterUploadSuccess(J)V

    .line 1264
    .end local v1    # "usn":Ljava/lang/Long;
    :cond_2
    return-void

    .line 1251
    :cond_3
    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->isUsnNotMatch(Lim/doit/pro/api/Response;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1252
    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->getUsnAfterUploadFailed(Lim/doit/pro/api/Response;)Ljava/lang/Long;

    move-result-object v0

    .line 1253
    .local v0, "serverUsn":Ljava/lang/Long;
    if-eqz v0, :cond_2

    .line 1254
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getMaxUSN()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 1256
    invoke-direct {p0, p5, v0}, Lim/doit/pro/api/DoitAPI;->updateEntityUsn(Lim/doit/pro/model/BaseEntity;Ljava/lang/Long;)V

    .line 1257
    new-instance v2, Lim/doit/pro/exception/DoitReSyncException;

    iget-object v3, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-direct {v2, v3}, Lim/doit/pro/exception/DoitReSyncException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1258
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-lez v2, :cond_2

    .line 1259
    new-instance v2, Lim/doit/pro/exception/DoitReSyncException;

    iget-object v3, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-direct {v2, v3}, Lim/doit/pro/exception/DoitReSyncException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private buildDownloadUrl(Z)Ljava/lang/String;
    .locals 4
    .param p1, "isCheckout"    # Z

    .prologue
    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    .local v0, "url":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 439
    const-string v1, "checkout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    :goto_0
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v1, "usn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getMaxUSN()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 445
    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x200

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 441
    :cond_0
    const-string v1, "pull"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private buildGoogleUserJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 566
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 567
    .local v1, "json":Lcom/google/gson/JsonObject;
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v2, "token"

    invoke-virtual {v1, v2, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v2, "language"

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDoitLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v2, "offset"

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->getLocalOffset()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 571
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 575
    .end local v1    # "json":Lcom/google/gson/JsonObject;
    :goto_0
    return-object v2

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 575
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private buildUserJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 550
    :try_start_0
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 551
    .local v1, "json":Lcom/google/gson/JsonObject;
    const-string v2, "email"

    invoke-virtual {v1, v2, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const-string v2, "account"

    invoke-virtual {v1, v2, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    const-string v2, "password"

    invoke-virtual {v1, v2, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v2, "language"

    invoke-static {}, Lim/doit/pro/utils/UserUtils;->getDoitLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v2, "offset"

    invoke-static {}, Lim/doit/pro/utils/DateUtils;->getLocalOffset()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 556
    const-string v2, "week_start"

    const-string v3, "Monday"

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 561
    .end local v1    # "json":Lcom/google/gson/JsonObject;
    :goto_0
    return-object v2

    .line 558
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private checkout(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 9
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 326
    const/4 v2, 0x0

    .line 328
    .local v2, "response":Lim/doit/pro/api/Response;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .local v5, "url":Ljava/lang/StringBuilder;
    const-string v6, "users/login"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "apiUrl":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkout url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 332
    iget-object v6, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-virtual {v6, v0}, Lim/doit/pro/api/HttpApi;->doHttpGet(Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 333
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v2, v6, v7}, Lim/doit/pro/api/DoitAPI;->isTryAgain(Lim/doit/pro/api/Response;ZZ)Z

    move-result v4

    .line 334
    .local v4, "tryAgain":Z
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkout again : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 335
    if-eqz v4, :cond_0

    .line 336
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->changeServer()V

    .line 337
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "checkout again url: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 340
    iget-object v6, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-virtual {v6, v0}, Lim/doit/pro/api/HttpApi;->doHttpGet(Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 342
    :cond_0
    invoke-direct {p0, v2}, Lim/doit/pro/api/DoitAPI;->isSuccess(Lim/doit/pro/api/Response;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->initDataAfterLogin()V

    .line 344
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v7, v2, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 345
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 346
    .local v3, "root":Lcom/google/gson/JsonObject;
    invoke-static {}, Lim/doit/pro/api/parser/UserParser;->getInstance()Lim/doit/pro/api/parser/UserParser;

    move-result-object v6

    const-string v7, "data"

    invoke-virtual {v6, v3, v7}, Lim/doit/pro/api/parser/UserParser;->parseAndSave(Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 347
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lim/doit/pro/api/DoitAPI;->startDownload(ZZ)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 354
    .end local v3    # "root":Lcom/google/gson/JsonObject;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v6

    if-nez v6, :cond_3

    .line 355
    :cond_2
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->clearLoginInfoNotChangeServer()V

    .line 356
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->clearDataExceptLoginInfo()V

    .line 358
    :cond_3
    invoke-static {v8}, Lim/doit/pro/utils/PrefUtils;->saveCheckoutFinish(Z)V

    .line 360
    .end local v0    # "apiUrl":Ljava/lang/String;
    .end local v4    # "tryAgain":Z
    .end local v5    # "url":Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 351
    const/4 v2, 0x0

    .line 354
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v6

    if-nez v6, :cond_5

    .line 355
    :cond_4
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->clearLoginInfoNotChangeServer()V

    .line 356
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->clearDataExceptLoginInfo()V

    .line 358
    :cond_5
    invoke-static {v8}, Lim/doit/pro/utils/PrefUtils;->saveCheckoutFinish(Z)V

    goto :goto_0

    .line 352
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 354
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v7

    if-nez v7, :cond_7

    .line 355
    :cond_6
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->clearLoginInfoNotChangeServer()V

    .line 356
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->clearDataExceptLoginInfo()V

    .line 358
    :cond_7
    invoke-static {v8}, Lim/doit/pro/utils/PrefUtils;->saveCheckoutFinish(Z)V

    .line 359
    throw v6
.end method

.method private download(ZZ)Lim/doit/pro/api/Response;
    .locals 4
    .param p1, "isCheckout"    # Z
    .param p2, "tryAgain"    # Z

    .prologue
    .line 421
    :try_start_0
    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->buildDownloadUrl(Z)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "url":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doit api start download, url : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 423
    iget-object v2, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-virtual {v2, v1}, Lim/doit/pro/api/HttpApi;->doHttpGet(Ljava/lang/String;)Lim/doit/pro/api/Response;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 424
    .local v0, "response":Lim/doit/pro/api/Response;
    if-nez v0, :cond_0

    .line 432
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 429
    :goto_0
    return-object v0

    .line 427
    :cond_0
    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Lim/doit/pro/api/DoitAPI;->afterDownloadFailed(Lim/doit/pro/api/Response;ZZ)V

    .line 428
    invoke-direct {p0, p1, v0}, Lim/doit/pro/api/DoitAPI;->afterDownloadSuccess(ZLim/doit/pro/api/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    goto :goto_0

    .line 430
    .end local v0    # "response":Lim/doit/pro/api/Response;
    .end local v1    # "url":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 432
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->refreshWidget()V

    .line 433
    throw v2
.end method

.method private getAPIUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1399
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    invoke-virtual {v1}, Lim/doit/pro/api/APIConfig;->getAPIPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDoitErrorCode(Lim/doit/pro/api/Response;)Ljava/lang/String;
    .locals 3
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 1329
    if-eqz p1, :cond_0

    iget-object v1, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1330
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v2, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 1331
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1332
    .local v0, "root":Lcom/google/gson/JsonObject;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v1, v0, v2}, Lim/doit/pro/api/parser/ParserUtil;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1334
    .end local v0    # "root":Lcom/google/gson/JsonObject;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSyncLogType(Lim/doit/pro/model/BaseEntity;)Lim/doit/pro/model/enums/SyncLogType;
    .locals 2
    .param p1, "entity"    # Lim/doit/pro/model/BaseEntity;

    .prologue
    .line 1425
    const/4 v0, 0x0

    .line 1426
    .local v0, "type":Lim/doit/pro/model/enums/SyncLogType;
    instance-of v1, p1, Lim/doit/pro/model/User;

    if-eqz v1, :cond_0

    .line 1427
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->USER:Lim/doit/pro/model/enums/SyncLogType;

    .line 1457
    :goto_0
    return-object v0

    .line 1428
    :cond_0
    instance-of v1, p1, Lim/doit/pro/model/Box;

    if-eqz v1, :cond_1

    .line 1429
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->BOX:Lim/doit/pro/model/enums/SyncLogType;

    .line 1430
    goto :goto_0

    :cond_1
    instance-of v1, p1, Lim/doit/pro/model/Filter;

    if-eqz v1, :cond_2

    .line 1431
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->FILTER:Lim/doit/pro/model/enums/SyncLogType;

    .line 1432
    goto :goto_0

    :cond_2
    instance-of v1, p1, Lim/doit/pro/model/Tag;

    if-eqz v1, :cond_3

    .line 1433
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->TAG:Lim/doit/pro/model/enums/SyncLogType;

    .line 1434
    goto :goto_0

    :cond_3
    instance-of v1, p1, Lim/doit/pro/model/TaskContext;

    if-eqz v1, :cond_4

    .line 1435
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->CONTEXT:Lim/doit/pro/model/enums/SyncLogType;

    .line 1436
    goto :goto_0

    :cond_4
    instance-of v1, p1, Lim/doit/pro/model/Project;

    if-eqz v1, :cond_5

    .line 1437
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->PROJECT:Lim/doit/pro/model/enums/SyncLogType;

    .line 1438
    goto :goto_0

    :cond_5
    instance-of v1, p1, Lim/doit/pro/model/Goal;

    if-eqz v1, :cond_6

    .line 1439
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->GOAL:Lim/doit/pro/model/enums/SyncLogType;

    .line 1440
    goto :goto_0

    :cond_6
    instance-of v1, p1, Lim/doit/pro/model/Task;

    if-eqz v1, :cond_7

    .line 1441
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->TASK:Lim/doit/pro/model/enums/SyncLogType;

    .line 1442
    goto :goto_0

    :cond_7
    instance-of v1, p1, Lim/doit/pro/model/SubTask;

    if-eqz v1, :cond_8

    .line 1443
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->SUB_TASK:Lim/doit/pro/model/enums/SyncLogType;

    .line 1444
    goto :goto_0

    :cond_8
    instance-of v1, p1, Lim/doit/pro/model/TaskComment;

    if-eqz v1, :cond_9

    .line 1445
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->TASK_COMMENT:Lim/doit/pro/model/enums/SyncLogType;

    .line 1446
    goto :goto_0

    :cond_9
    instance-of v1, p1, Lim/doit/pro/model/Notice;

    if-eqz v1, :cond_a

    .line 1447
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->NOTICE:Lim/doit/pro/model/enums/SyncLogType;

    .line 1448
    goto :goto_0

    :cond_a
    instance-of v1, p1, Lim/doit/pro/model/DailyReview;

    if-eqz v1, :cond_b

    .line 1449
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->DAILY_REVIEW:Lim/doit/pro/model/enums/SyncLogType;

    .line 1450
    goto :goto_0

    :cond_b
    instance-of v1, p1, Lim/doit/pro/model/Contact;

    if-eqz v1, :cond_c

    .line 1451
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->CONTACT:Lim/doit/pro/model/enums/SyncLogType;

    .line 1452
    goto :goto_0

    :cond_c
    instance-of v1, p1, Lim/doit/pro/model/DPurchase;

    if-eqz v1, :cond_d

    .line 1453
    sget-object v0, Lim/doit/pro/model/enums/SyncLogType;->PURCHASE:Lim/doit/pro/model/enums/SyncLogType;

    .line 1454
    goto :goto_0

    .line 1455
    :cond_d
    const-string v1, "please define sync log type."

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getUsnAfterUploadFailed(Lim/doit/pro/api/Response;)Ljava/lang/Long;
    .locals 4
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 1314
    if-eqz p1, :cond_0

    iget-object v2, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-static {v2}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1315
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v3, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 1316
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 1317
    .local v1, "root":Lcom/google/gson/JsonObject;
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1318
    const-string v2, "data"

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->getAsJsonObject(Ljava/lang/String;)Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1319
    .local v0, "dataJson":Lcom/google/gson/JsonObject;
    const-string v2, "usn"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1320
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v2

    .line 1321
    const-string v3, "usn"

    .line 1320
    invoke-virtual {v2, v0, v3}, Lim/doit/pro/api/parser/ParserUtil;->getLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1325
    .end local v0    # "dataJson":Lcom/google/gson/JsonObject;
    .end local v1    # "root":Lcom/google/gson/JsonObject;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getUsnAfterUploadSuccess(Lim/doit/pro/api/Response;)Ljava/lang/Long;
    .locals 4
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 1303
    if-eqz p1, :cond_0

    iget-object v1, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1304
    new-instance v1, Lcom/google/gson/JsonParser;

    invoke-direct {v1}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v2, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 1305
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1306
    .local v0, "root":Lcom/google/gson/JsonObject;
    const-string v1, "usn"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1307
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v1

    const-string v2, "usn"

    invoke-virtual {v1, v0, v2}, Lim/doit/pro/api/parser/ParserUtil;->getLong(Lcom/google/gson/JsonObject;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1310
    .end local v0    # "root":Lcom/google/gson/JsonObject;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initCredentials()V
    .locals 3

    .prologue
    .line 88
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLoginUsername()Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "username":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "password":Ljava/lang/String;
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    :cond_0
    return-void
.end method

.method private initDataAfterLogin()V
    .locals 1

    .prologue
    .line 384
    const/4 v0, 0x1

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveReminderIsShowInNotification(Z)V

    .line 386
    const-string v0, "title_pop"

    invoke-static {v0}, Lim/doit/pro/utils/PrefUtils;->saveReminderPopupStyle(Ljava/lang/String;)V

    .line 387
    return-void
.end method

.method private isDownloadAvatars(ZJ)Z
    .locals 2
    .param p1, "isCheckout"    # Z
    .param p2, "lastServerTime"    # J

    .prologue
    .line 530
    if-nez p1, :cond_0

    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->isDownloadAvatars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 531
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    iget-object v0, v0, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v0, p2, p3}, Lim/doit/pro/db/persist/ContactDao;->isServerUpdated(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    invoke-direct {p0, p2, p3}, Lim/doit/pro/api/DoitAPI;->isUserUpdate(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 530
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFailed(Lim/doit/pro/api/Response;)Z
    .locals 1
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 1342
    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->isSuccess(Lim/doit/pro/api/Response;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSuccess(Lim/doit/pro/api/Response;)Z
    .locals 1
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 1338
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTryAgain(Lim/doit/pro/api/Response;ZZ)Z
    .locals 7
    .param p1, "response"    # Lim/doit/pro/api/Response;
    .param p2, "isCheckout"    # Z
    .param p3, "tryAgain"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 365
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    .line 366
    const/16 v4, 0x191

    iget v5, p1, Lim/doit/pro/api/Response;->code:I

    if-ne v4, v5, :cond_1

    .line 368
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v4

    .line 369
    iget-object v5, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    const-class v6, Lim/doit/pro/model/ResponseErrorResult;

    .line 368
    invoke-virtual {v4, v5, v6}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lim/doit/pro/model/ResponseErrorResult;

    .line 370
    .local v1, "result":Lim/doit/pro/model/ResponseErrorResult;
    const-string v4, "E1001"

    invoke-virtual {v1}, Lim/doit/pro/model/ResponseErrorResult;->getCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_2

    .line 380
    .end local v1    # "result":Lim/doit/pro/model/ResponseErrorResult;
    :cond_0
    :goto_0
    return v2

    .line 373
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 374
    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/16 v4, 0x12d

    iget v5, p1, Lim/doit/pro/api/Response;->code:I

    if-eq v4, v5, :cond_0

    :cond_2
    move v2, v3

    .line 380
    goto :goto_0
.end method

.method private isUpdateRepeatInstances(ZLjava/lang/String;)Z
    .locals 1
    .param p1, "isCheckout"    # Z
    .param p2, "oriWeekStart"    # Ljava/lang/String;

    .prologue
    .line 525
    if-nez p1, :cond_0

    .line 526
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getWeekStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUserUpdate(J)Z
    .locals 3
    .param p1, "lastServerTime"    # J

    .prologue
    .line 536
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v0

    invoke-virtual {v0}, Lim/doit/pro/model/User;->getUpdated()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUsnNotMatch(Lim/doit/pro/api/Response;)Z
    .locals 5
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1346
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isConflict()Z

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    .line 1347
    .local v1, "isConflict":Z
    :goto_0
    if-eqz v1, :cond_1

    .line 1348
    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->getDoitErrorCode(Lim/doit/pro/api/Response;)Ljava/lang/String;

    move-result-object v0

    .line 1349
    .local v0, "errorCode":Ljava/lang/String;
    const-string v4, "E906"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1353
    .end local v0    # "errorCode":Ljava/lang/String;
    :goto_1
    return v2

    .end local v1    # "isConflict":Z
    :cond_0
    move v1, v3

    .line 1346
    goto :goto_0

    .restart local v1    # "isConflict":Z
    :cond_1
    move v2, v3

    .line 1353
    goto :goto_1
.end method

.method private parseAndSave(Lcom/google/gson/JsonObject;)V
    .locals 4
    .param p1, "root"    # Lcom/google/gson/JsonObject;

    .prologue
    .line 495
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v0

    .line 496
    .local v0, "persist":Lim/doit/pro/db/Persist;
    invoke-static {}, Lim/doit/pro/api/parser/UserParser;->getInstance()Lim/doit/pro/api/parser/UserParser;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, p1, v2}, Lim/doit/pro/api/parser/UserParser;->parseAndSave(Lcom/google/gson/JsonObject;Ljava/lang/String;)V

    .line 497
    iget-object v1, v0, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-static {}, Lim/doit/pro/api/parser/BoxParser;->getInstance()Lim/doit/pro/api/parser/BoxParser;

    move-result-object v2

    .line 498
    const-string v3, "boxes"

    .line 497
    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/BoxParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/BoxDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 499
    iget-object v1, v0, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    invoke-static {}, Lim/doit/pro/api/parser/FilterParser;->getInstance()Lim/doit/pro/api/parser/FilterParser;

    move-result-object v2

    .line 500
    const-string v3, "filters"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/FilterParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 499
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/FilterDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 501
    iget-object v1, v0, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-static {}, Lim/doit/pro/api/parser/TagParser;->getInstance()Lim/doit/pro/api/parser/TagParser;

    move-result-object v2

    .line 502
    const-string v3, "tags"

    .line 501
    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/TagParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TagDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 503
    iget-object v1, v0, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 504
    invoke-static {}, Lim/doit/pro/api/parser/TaskContextParser;->getInstance()Lim/doit/pro/api/parser/TaskContextParser;

    move-result-object v2

    const-string v3, "contexts"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/TaskContextParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 503
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskContextDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 505
    iget-object v1, v0, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-static {}, Lim/doit/pro/api/parser/GoalParser;->getInstance()Lim/doit/pro/api/parser/GoalParser;

    move-result-object v2

    .line 506
    const-string v3, "goals"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/GoalParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 505
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/GoalDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 507
    iget-object v1, v0, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-static {}, Lim/doit/pro/api/parser/ProjectParser;->getInstance()Lim/doit/pro/api/parser/ProjectParser;

    move-result-object v2

    .line 508
    const-string v3, "projects"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/ProjectParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 507
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/ProjectDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 509
    iget-object v1, v0, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-static {}, Lim/doit/pro/api/parser/ContactParser;->getInstance()Lim/doit/pro/api/parser/ContactParser;

    move-result-object v2

    .line 510
    const-string v3, "contacts"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/ContactParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 509
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/ContactDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 511
    iget-object v1, v0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-static {}, Lim/doit/pro/api/parser/TaskParser;->getInstance()Lim/doit/pro/api/parser/TaskParser;

    move-result-object v2

    .line 512
    const-string v3, "tasks"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/TaskParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 511
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 513
    iget-object v1, v0, Lim/doit/pro/db/Persist;->taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

    .line 514
    invoke-static {}, Lim/doit/pro/api/parser/TaskCommentParser;->getInstance()Lim/doit/pro/api/parser/TaskCommentParser;

    move-result-object v2

    const-string v3, "comments"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/TaskCommentParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 513
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/TaskCommentDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 515
    iget-object v1, v0, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-static {}, Lim/doit/pro/api/parser/SubTaskParser;->getInstance()Lim/doit/pro/api/parser/SubTaskParser;

    move-result-object v2

    .line 516
    const-string v3, "subtasks"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/SubTaskParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 515
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/SubTaskDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 517
    iget-object v1, v0, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    invoke-static {}, Lim/doit/pro/api/parser/NoticeParser;->getInstance()Lim/doit/pro/api/parser/NoticeParser;

    move-result-object v2

    .line 518
    const-string v3, "notices"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/NoticeParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 517
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/NoticeDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 519
    iget-object v1, v0, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    .line 520
    invoke-static {}, Lim/doit/pro/api/parser/DailyReviewParser;->getInstance()Lim/doit/pro/api/parser/DailyReviewParser;

    move-result-object v2

    const-string v3, "daily_reviews"

    invoke-virtual {v2, p1, v3}, Lim/doit/pro/api/parser/DailyReviewParser;->parseItems(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 519
    invoke-virtual {v1, v2}, Lim/doit/pro/db/persist/DailyReviewDao;->batchCreateOrUpdate(Ljava/util/ArrayList;)V

    .line 521
    return-void
.end method

.method private postImageToServer(Ljava/lang/String;Landroid/graphics/Bitmap;)Lim/doit/pro/api/Response;
    .locals 8
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;
        }
    .end annotation

    .prologue
    .line 1374
    const/4 v4, 0x0

    .line 1377
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1378
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1379
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 1380
    .local v2, "data":[B
    new-instance v0, Lorg/apache/http/entity/mime/content/ByteArrayBody;

    const-string v6, "avatar.png"

    invoke-direct {v0, v2, v6}, Lorg/apache/http/entity/mime/content/ByteArrayBody;-><init>([BLjava/lang/String;)V

    .line 1381
    .local v0, "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    iget-object v6, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lim/doit/pro/api/HttpApi;->sendFile(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ByteArrayBody;)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1386
    .local v5, "response":Lim/doit/pro/api/Response;
    if-eqz v4, :cond_0

    .line 1388
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1394
    .end local v0    # "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v5    # "response":Lim/doit/pro/api/Response;
    :cond_0
    :goto_0
    return-object v5

    .line 1389
    .restart local v0    # "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .restart local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "data":[B
    .restart local v5    # "response":Lim/doit/pro/api/Response;
    :catch_0
    move-exception v3

    .line 1390
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1383
    .end local v0    # "bab":Lorg/apache/http/entity/mime/content/ByteArrayBody;
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "response":Lim/doit/pro/api/Response;
    :catch_1
    move-exception v3

    .line 1384
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1386
    if-eqz v4, :cond_1

    .line 1388
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1394
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1389
    .restart local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 1390
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1385
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 1386
    if-eqz v4, :cond_2

    .line 1388
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 1393
    :cond_2
    :goto_2
    throw v6

    .line 1389
    :catch_3
    move-exception v3

    .line 1390
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lim/doit/pro/api/HttpApi;->doHttpPost(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method private putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;
        }
    .end annotation

    .prologue
    .line 1364
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lim/doit/pro/api/HttpApi;->doHttpPut(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v0

    return-object v0
.end method

.method private saveSyncLog(Lim/doit/pro/api/Response;Lim/doit/pro/model/BaseEntity;)V
    .locals 6
    .param p1, "response"    # Lim/doit/pro/api/Response;
    .param p2, "entity"    # Lim/doit/pro/model/BaseEntity;

    .prologue
    .line 1405
    if-eqz p1, :cond_0

    .line 1406
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v5

    iget-object v1, v5, Lim/doit/pro/db/Persist;->lastSyncLogDao:Lim/doit/pro/db/persist/LastSyncLogDao;

    .line 1407
    .local v1, "dao":Lim/doit/pro/db/persist/LastSyncLogDao;
    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isSucces()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1408
    invoke-virtual {v1}, Lim/doit/pro/db/persist/LastSyncLogDao;->saveSuccessLog()V

    .line 1422
    .end local v1    # "dao":Lim/doit/pro/db/persist/LastSyncLogDao;
    .end local p2    # "entity":Lim/doit/pro/model/BaseEntity;
    :cond_0
    :goto_0
    return-void

    .line 1409
    .restart local v1    # "dao":Lim/doit/pro/db/persist/LastSyncLogDao;
    .restart local p2    # "entity":Lim/doit/pro/model/BaseEntity;
    :cond_1
    invoke-virtual {p1}, Lim/doit/pro/api/Response;->isError()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    .line 1410
    invoke-virtual {p2}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v3

    .line 1411
    .local v3, "itemId":Ljava/lang/String;
    invoke-direct {p0, p2}, Lim/doit/pro/api/DoitAPI;->getSyncLogType(Lim/doit/pro/model/BaseEntity;)Lim/doit/pro/model/enums/SyncLogType;

    move-result-object v4

    .line 1412
    .local v4, "type":Lim/doit/pro/model/enums/SyncLogType;
    const/4 v2, 0x0

    .line 1413
    .local v2, "extraId":Ljava/lang/String;
    instance-of v5, p2, Lim/doit/pro/model/Task;

    if-eqz v5, :cond_2

    .line 1414
    check-cast p2, Lim/doit/pro/model/Task;

    .end local p2    # "entity":Lim/doit/pro/model/BaseEntity;
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    .line 1416
    :cond_2
    invoke-direct {p0, p1}, Lim/doit/pro/api/DoitAPI;->getDoitErrorCode(Lim/doit/pro/api/Response;)Ljava/lang/String;

    move-result-object v0

    .line 1417
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {v1, v3, v2, v4, v0}, Lim/doit/pro/db/persist/LastSyncLogDao;->saveErrorLog(Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/model/enums/SyncLogType;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sendSyncAvatarsBroascast()V
    .locals 3

    .prologue
    .line 540
    const/4 v1, 0x1

    invoke-static {v1}, Lim/doit/pro/utils/PrefUtils;->saveDownloadAvatars(Z)V

    .line 541
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 542
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "im.doit.pro.receiver.DoitSyncReceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    const-string v1, "sync_type"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 544
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 545
    return-void
.end method

.method private startDownload(ZZ)Lim/doit/pro/api/Response;
    .locals 5
    .param p1, "isCheckout"    # Z
    .param p2, "tryAgain"    # Z

    .prologue
    .line 390
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getServerTime()J

    move-result-wide v0

    .line 391
    .local v0, "lastServerTime":J
    const/4 v2, 0x0

    .line 392
    .local v2, "oriWeekStart":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 393
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v4

    invoke-virtual {v4}, Lim/doit/pro/model/User;->getWeekStart()Ljava/lang/String;

    move-result-object v2

    .line 396
    :cond_0
    invoke-direct {p0, p1, p2}, Lim/doit/pro/api/DoitAPI;->download(ZZ)Lim/doit/pro/api/Response;

    move-result-object v3

    .line 399
    .local v3, "response":Lim/doit/pro/api/Response;
    invoke-direct {p0, p1, v0, v1}, Lim/doit/pro/api/DoitAPI;->isDownloadAvatars(ZJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 400
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->sendSyncAvatarsBroascast()V

    .line 402
    :cond_1
    invoke-direct {p0, v0, v1}, Lim/doit/pro/api/DoitAPI;->isUserUpdate(J)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->updateAlarmServices()V

    .line 406
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/BroadcastUtils;->updateTodayDailyPlanAlarm(Landroid/content/Context;)V

    .line 407
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/BroadcastUtils;->updateTodayDailyReviewAlarm(Landroid/content/Context;)V

    .line 409
    invoke-direct {p0, p1, v2}, Lim/doit/pro/api/DoitAPI;->isUpdateRepeatInstances(ZLjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 410
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v4}, Lim/doit/pro/db/persist/TaskDao;->updateRepeatInstances()V

    .line 414
    :cond_2
    invoke-static {}, Lim/doit/pro/utils/BroadcastUtils;->updateAndSendReminder()V

    .line 416
    return-object v3
.end method

.method private updateAlarmServices()V
    .locals 3

    .prologue
    .line 489
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lim/doit/pro/service/DoitService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    .local v0, "service":Landroid/content/Intent;
    const-string v1, "sync_type"

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 491
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->context()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 492
    return-void
.end method

.method private updateEntityUsn(Lim/doit/pro/model/BaseEntity;Ljava/lang/Long;)V
    .locals 6
    .param p1, "entity"    # Lim/doit/pro/model/BaseEntity;
    .param p2, "serverUsn"    # Ljava/lang/Long;

    .prologue
    .line 1268
    instance-of v1, p1, Lim/doit/pro/model/User;

    if-eqz v1, :cond_1

    .line 1269
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/UserDao;->updateUsn(Ljava/lang/String;J)V

    .line 1300
    :cond_0
    :goto_0
    return-void

    .line 1270
    :cond_1
    instance-of v1, p1, Lim/doit/pro/model/Box;

    if-eqz v1, :cond_2

    .line 1271
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/BoxDao;->updateUsn(Ljava/lang/String;J)V

    goto :goto_0

    .line 1272
    :cond_2
    instance-of v1, p1, Lim/doit/pro/model/Filter;

    if-eqz v1, :cond_3

    .line 1273
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/FilterDao;->updateUsn(Ljava/lang/String;J)V

    goto :goto_0

    .line 1274
    :cond_3
    instance-of v1, p1, Lim/doit/pro/model/Tag;

    if-eqz v1, :cond_4

    .line 1275
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/TagDao;->updateUsn(Ljava/lang/String;J)V

    goto :goto_0

    .line 1276
    :cond_4
    instance-of v1, p1, Lim/doit/pro/model/TaskContext;

    if-eqz v1, :cond_5

    .line 1277
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 1278
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1277
    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/TaskContextDao;->updateUsn(Ljava/lang/String;J)V

    goto :goto_0

    .line 1279
    :cond_5
    instance-of v1, p1, Lim/doit/pro/model/Project;

    if-eqz v1, :cond_6

    .line 1280
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/ProjectDao;->updateUsn(Ljava/lang/String;J)V

    goto :goto_0

    .line 1281
    :cond_6
    instance-of v1, p1, Lim/doit/pro/model/Goal;

    if-eqz v1, :cond_7

    .line 1282
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/GoalDao;->updateUsn(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1283
    :cond_7
    instance-of v1, p1, Lim/doit/pro/model/Task;

    if-eqz v1, :cond_8

    move-object v0, p1

    .line 1284
    check-cast v0, Lim/doit/pro/model/Task;

    .line 1285
    .local v0, "task":Lim/doit/pro/model/Task;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 1286
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1285
    invoke-virtual {v1, v2, v3, v4, v5}, Lim/doit/pro/db/persist/TaskDao;->updateUsn(Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1287
    .end local v0    # "task":Lim/doit/pro/model/Task;
    :cond_8
    instance-of v1, p1, Lim/doit/pro/model/SubTask;

    if-eqz v1, :cond_9

    .line 1288
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/SubTaskDao;->updateUsn(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1289
    :cond_9
    instance-of v1, p1, Lim/doit/pro/model/TaskComment;

    if-eqz v1, :cond_a

    .line 1290
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 1291
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1290
    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/TaskCommentDao;->updateUsn(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1292
    :cond_a
    instance-of v1, p1, Lim/doit/pro/model/Notice;

    if-eqz v1, :cond_b

    .line 1293
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/NoticeDao;->updateUsn(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1294
    :cond_b
    instance-of v1, p1, Lim/doit/pro/model/DailyReview;

    if-eqz v1, :cond_c

    .line 1295
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    .line 1296
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1295
    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/DailyReviewDao;->updateUsn(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 1297
    :cond_c
    instance-of v1, p1, Lim/doit/pro/model/Contact;

    if-eqz v1, :cond_0

    .line 1298
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntity;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lim/doit/pro/db/persist/ContactDao;->updateUsn(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method private updateMaxUsnAfterUploadSuccess(J)V
    .locals 5
    .param p1, "usn"    # J

    .prologue
    .line 1357
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->getMaxUSN()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1358
    invoke-static {p1, p2}, Lim/doit/pro/utils/PrefUtils;->saveMaxUSN(J)V

    .line 1360
    :cond_0
    return-void
.end method

.method private updateUserInfo(Lim/doit/pro/api/Response;)V
    .locals 4
    .param p1, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 646
    :try_start_0
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v3, p1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 647
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 648
    .local v1, "root":Lcom/google/gson/JsonObject;
    invoke-static {}, Lim/doit/pro/api/parser/UserParser;->getInstance()Lim/doit/pro/api/parser/UserParser;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v2, v1, v3}, Lim/doit/pro/api/parser/UserParser;->parseAndSave(Lcom/google/gson/JsonObject;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    .end local v1    # "root":Lcom/google/gson/JsonObject;
    :goto_0
    return-void

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private upload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 580
    :try_start_0
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadPurchases()V

    .line 581
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadUser()V

    .line 582
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadBoxes()V

    .line 583
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadFitlers()V

    .line 584
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadTags()V

    .line 585
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadTaskContexts()V

    .line 586
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadGoals()V

    .line 587
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadProjects()V

    .line 588
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadContacts()V

    .line 589
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadSubtasks()V

    .line 590
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadComments()V

    .line 591
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadTasks()V

    .line 592
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadNotices()V

    .line 593
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadDailyReviews()V

    .line 594
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadAgentErrors()V
    :try_end_0
    .catch Lim/doit/pro/exception/DoitConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 598
    :goto_0
    return-void

    .line 595
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Lim/doit/pro/exception/DoitConnectionException;
    const-string v1, "sync focus stop."

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private uploadAgentErrors()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 1220
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 1221
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->agenterror:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1222
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1235
    return-void

    .line 1222
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 1223
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1224
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->agentErrorDao:Lim/doit/pro/db/persist/AgentErrorDao;

    .line 1225
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/AgentErrorDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/AgentError;

    .line 1226
    .local v6, "agentError":Lim/doit/pro/model/AgentError;
    if-nez v6, :cond_2

    .line 1227
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 1230
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1231
    .local v0, "json":Ljava/lang/String;
    const-string v1, "aes"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1232
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v6}, Lim/doit/pro/model/AgentError;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0
.end method

.method private uploadBoxes()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 682
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->box:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 683
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 696
    return-void

    .line 683
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 684
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->boxDao:Lim/doit/pro/db/persist/BoxDao;

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/BoxDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Box;

    .line 685
    .local v6, "box":Lim/doit/pro/model/Box;
    if-nez v6, :cond_1

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadBoxes uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 687
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 686
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 688
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 691
    :cond_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "box Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 693
    const-string v1, "boxes/update"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 694
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v6}, Lim/doit/pro/model/Box;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0
.end method

.method private uploadComments()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 1146
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 1147
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->taskcomment:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1148
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1165
    return-void

    .line 1148
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 1149
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskCommentDao:Lim/doit/pro/db/persist/TaskCommentDao;

    .line 1150
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/TaskCommentDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/TaskComment;

    .line 1151
    .local v6, "taskComment":Lim/doit/pro/model/TaskComment;
    if-nez v6, :cond_1

    .line 1152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadComments uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1153
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 1154
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 1157
    :cond_1
    const/4 v2, 0x0

    .line 1158
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1159
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1160
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create comment Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1161
    const-string v1, "comments"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1163
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Lim/doit/pro/model/TaskComment;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0
.end method

.method private uploadContacts()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 988
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->contact:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 989
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1015
    return-void

    .line 989
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 990
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    .line 991
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    .line 990
    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/ContactDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Contact;

    .line 992
    .local v6, "contact":Lim/doit/pro/model/Contact;
    if-nez v6, :cond_1

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "upload contact uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 994
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 993
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 995
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 998
    :cond_1
    const/4 v2, 0x0

    .line 999
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1000
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create contact Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1002
    const-string v1, "contacts"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1013
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lim/doit/pro/model/Contact;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0

    .line 1003
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1004
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1005
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update contact Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1006
    const-string v1, "contacts/update/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1007
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1008
    invoke-static {}, Lim/doit/pro/api/parser/ContactParser;->getInstance()Lim/doit/pro/api/parser/ContactParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/ContactParser;->serializeForDeleted(Lim/doit/pro/model/Contact;)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "delete contact Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1011
    const-string v1, "contacts/delete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    goto :goto_1
.end method

.method private uploadDailyReviews()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 1195
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 1196
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->daily_review:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1197
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1216
    return-void

    .line 1197
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 1198
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->dailyReviewDao:Lim/doit/pro/db/persist/DailyReviewDao;

    .line 1199
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/DailyReviewDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/DailyReview;

    .line 1200
    .local v6, "dailyReview":Lim/doit/pro/model/DailyReview;
    if-nez v6, :cond_2

    .line 1201
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 1204
    :cond_2
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1205
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1206
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create dailyreview Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1207
    const-string v1, "daily_reviews"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1208
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v6}, Lim/doit/pro/model/DailyReview;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0

    .line 1209
    .end local v0    # "json":Ljava/lang/String;
    .end local v2    # "response":Lim/doit/pro/api/Response;
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1210
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1211
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update dailyreview Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1212
    const-string v1, "daily_reviews/update"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1213
    .restart local v2    # "response":Lim/doit/pro/api/Response;
    invoke-virtual {v6}, Lim/doit/pro/model/DailyReview;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto/16 :goto_0
.end method

.method private uploadFitlers()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 700
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 701
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->filter:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 702
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 718
    return-void

    .line 702
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 703
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->filterDao:Lim/doit/pro/db/persist/FilterDao;

    .line 705
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    .line 704
    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/FilterDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Filter;

    .line 706
    .local v6, "filter":Lim/doit/pro/model/Filter;
    if-nez v6, :cond_2

    .line 707
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadFitlers uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 708
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 707
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 709
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 712
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "filter Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 714
    const-string v1, "filters/update"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 715
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v6}, Lim/doit/pro/model/Filter;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0
.end method

.method private uploadGoals()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 824
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 825
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->goal:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 826
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 877
    return-void

    .line 826
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 827
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/GoalDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Goal;

    .line 828
    .local v6, "goal":Lim/doit/pro/model/Goal;
    if-nez v6, :cond_1

    .line 829
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadGoals uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 830
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 829
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 831
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 834
    :cond_1
    const/4 v2, 0x0

    .line 835
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 836
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 837
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create goal Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 838
    const-string v1, "goals"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 874
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lim/doit/pro/model/Goal;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    .line 875
    invoke-direct {p0, v6, v2}, Lim/doit/pro/api/DoitAPI;->whenGoalConflict(Lim/doit/pro/model/Goal;Lim/doit/pro/api/Response;)V

    goto :goto_0

    .line 839
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 840
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update goal Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 842
    const-string v1, "goals/update/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 843
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 844
    invoke-static {}, Lim/doit/pro/api/parser/GoalParser;->getInstance()Lim/doit/pro/api/parser/GoalParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/GoalParser;->serializeForCompleted(Lim/doit/pro/model/Goal;)Ljava/lang/String;

    move-result-object v0

    .line 846
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "complete goal Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 847
    const-string v1, "goals/complete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 848
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUncomplete()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 849
    invoke-static {}, Lim/doit/pro/api/parser/GoalParser;->getInstance()Lim/doit/pro/api/parser/GoalParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/GoalParser;->serializeForCompleted(Lim/doit/pro/model/Goal;)Ljava/lang/String;

    move-result-object v0

    .line 851
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uncomplete goal Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 852
    const-string v1, "goals/uncomplete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 853
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isTrash()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 854
    invoke-static {}, Lim/doit/pro/api/parser/GoalParser;->getInstance()Lim/doit/pro/api/parser/GoalParser;

    move-result-object v1

    .line 855
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/GoalParser;->serializeForTrashed(Lim/doit/pro/model/Goal;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "trash goal Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 857
    const-string v1, "goals/trash/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 858
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_7
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUntrash()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 859
    invoke-static {}, Lim/doit/pro/api/parser/GoalParser;->getInstance()Lim/doit/pro/api/parser/GoalParser;

    move-result-object v1

    .line 860
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/GoalParser;->serializeForTrashed(Lim/doit/pro/model/Goal;)Ljava/lang/String;

    move-result-object v0

    .line 861
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "untrash goal Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 862
    const-string v1, "goals/untrash/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 863
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 864
    invoke-static {}, Lim/doit/pro/api/parser/GoalParser;->getInstance()Lim/doit/pro/api/parser/GoalParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/GoalParser;->serializeForArchived(Lim/doit/pro/model/Goal;)Ljava/lang/String;

    move-result-object v0

    .line 866
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "archive goal Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 867
    const-string v1, "goals/archive/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 868
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 869
    invoke-static {}, Lim/doit/pro/api/parser/GoalParser;->getInstance()Lim/doit/pro/api/parser/GoalParser;

    move-result-object v1

    .line 870
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/GoalParser;->serializeForDeleted(Lim/doit/pro/model/Goal;)Ljava/lang/String;

    move-result-object v0

    .line 871
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "delete goal Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 872
    const-string v1, "goals/clear/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private uploadMyAvatar()V
    .locals 8

    .prologue
    .line 233
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 234
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->user:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v0

    .line 235
    .local v0, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    return-void

    .line 235
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 236
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/UserDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/User;

    .line 237
    .local v6, "user":Lim/doit/pro/model/User;
    if-nez v6, :cond_2

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "upload User avatar uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 239
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 243
    :cond_2
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdateAvatar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    const-string v1, "avatars"

    .line 245
    invoke-virtual {v6}, Lim/doit/pro/model/User;->getAvatar()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 244
    invoke-direct {p0, v1, v4}, Lim/doit/pro/api/DoitAPI;->postImageToServer(Ljava/lang/String;Landroid/graphics/Bitmap;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 246
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v6}, Lim/doit/pro/model/User;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0
.end method

.method private uploadNotices()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 1169
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 1170
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->notice:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1171
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1191
    return-void

    .line 1171
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 1172
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->noticeDao:Lim/doit/pro/db/persist/NoticeDao;

    .line 1173
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    .line 1172
    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/NoticeDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Notice;

    .line 1174
    .local v6, "notice":Lim/doit/pro/model/Notice;
    if-nez v6, :cond_1

    .line 1175
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 1178
    :cond_1
    const/4 v2, 0x0

    .line 1179
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1180
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "notice Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1182
    const-string v1, "notices/update/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1189
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lim/doit/pro/model/Notice;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0

    .line 1183
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1184
    invoke-static {}, Lim/doit/pro/api/parser/NoticeParser;->getInstance()Lim/doit/pro/api/parser/NoticeParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/NoticeParser;->serializeForDeleted(Lim/doit/pro/model/Notice;)Ljava/lang/String;

    move-result-object v0

    .line 1186
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "delete notice Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1187
    const-string v1, "notices/delete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    goto :goto_1
.end method

.method private uploadProjects()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 905
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 906
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->project:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 907
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 959
    return-void

    .line 907
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 908
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    .line 909
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    .line 908
    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/ProjectDao;->findFullByUUID(Ljava/lang/String;)Lim/doit/pro/model/Project;

    move-result-object v6

    .line 910
    .local v6, "project":Lim/doit/pro/model/Project;
    if-nez v6, :cond_1

    .line 911
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "updateProjects uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 912
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 911
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 913
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 916
    :cond_1
    const/4 v2, 0x0

    .line 917
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 918
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create project Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 920
    const-string v1, "projects"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 956
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lim/doit/pro/model/Project;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    .line 957
    invoke-direct {p0, v6, v2}, Lim/doit/pro/api/DoitAPI;->whenProjectConflict(Lim/doit/pro/model/Project;Lim/doit/pro/api/Response;)V

    goto :goto_0

    .line 921
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 922
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update project Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 924
    const-string v1, "projects/update/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 925
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 926
    invoke-static {}, Lim/doit/pro/api/parser/ProjectParser;->getInstance()Lim/doit/pro/api/parser/ProjectParser;

    move-result-object v1

    .line 927
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/ProjectParser;->serializeForCompleted(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v0

    .line 928
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "complete project Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 929
    const-string v1, "projects/complete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 930
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUncomplete()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 931
    invoke-static {}, Lim/doit/pro/api/parser/ProjectParser;->getInstance()Lim/doit/pro/api/parser/ProjectParser;

    move-result-object v1

    .line 932
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/ProjectParser;->serializeForCompleted(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uncomplete project Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 934
    const-string v1, "projects/uncomplete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 935
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isTrash()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 936
    invoke-static {}, Lim/doit/pro/api/parser/ProjectParser;->getInstance()Lim/doit/pro/api/parser/ProjectParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/ProjectParser;->serializeForTrashed(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "trash project Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 939
    const-string v1, "projects/trash/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 940
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_7
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUntrash()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 941
    invoke-static {}, Lim/doit/pro/api/parser/ProjectParser;->getInstance()Lim/doit/pro/api/parser/ProjectParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/ProjectParser;->serializeForTrashed(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v0

    .line 943
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "untrash project Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 944
    const-string v1, "projects/untrash/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 945
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 946
    invoke-static {}, Lim/doit/pro/api/parser/ProjectParser;->getInstance()Lim/doit/pro/api/parser/ProjectParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/ProjectParser;->serializeForArchived(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "archive project Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 949
    const-string v1, "projects/archive/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 950
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 951
    invoke-static {}, Lim/doit/pro/api/parser/ProjectParser;->getInstance()Lim/doit/pro/api/parser/ProjectParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/ProjectParser;->serializeForDeleted(Lim/doit/pro/model/Project;)Ljava/lang/String;

    move-result-object v0

    .line 953
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "delete project Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 954
    const-string v1, "projects/clear/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private uploadPurchases()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 603
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->purchase:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 604
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "upload purchase size : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 605
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 623
    return-void

    .line 605
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 606
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->purchaseDao:Lim/doit/pro/db/persist/PurchaseDao;

    .line 607
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    .line 606
    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/PurchaseDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/DPurchase;

    .line 608
    .local v6, "purchase":Lim/doit/pro/model/DPurchase;
    if-nez v6, :cond_1

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "upload purchase uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 610
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 609
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 611
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 614
    :cond_1
    const/4 v2, 0x0

    .line 615
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 616
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create purchase Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 618
    const-string v1, "payment/android"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 620
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Lim/doit/pro/model/DPurchase;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    .line 621
    invoke-direct {p0, v6, v2}, Lim/doit/pro/api/DoitAPI;->afterPurchaseUpload(Lim/doit/pro/model/DPurchase;Lim/doit/pro/api/Response;)V

    goto :goto_0
.end method

.method private uploadSubtasks()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 1104
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 1105
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->subtask:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1106
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1142
    return-void

    .line 1106
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 1107
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    .line 1108
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    .line 1107
    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/SubTaskDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/SubTask;

    .line 1109
    .local v6, "subTask":Lim/doit/pro/model/SubTask;
    if-nez v6, :cond_1

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadSubtasks uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1111
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 1112
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 1115
    :cond_1
    const/4 v2, 0x0

    .line 1116
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1117
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create subtask Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1119
    const-string v1, "subtasks"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1140
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lim/doit/pro/model/SubTask;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0

    .line 1120
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1121
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1122
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update subtask Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1123
    const-string v1, "subtasks/update/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1124
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1125
    invoke-static {}, Lim/doit/pro/api/parser/SubTaskParser;->getInstance()Lim/doit/pro/api/parser/SubTaskParser;

    move-result-object v1

    .line 1126
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/SubTaskParser;->serializeForCompleted(Lim/doit/pro/model/SubTask;)Ljava/lang/String;

    move-result-object v0

    .line 1127
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "complete subtask Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1128
    const-string v1, "subtasks/complete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1129
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_5
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUncomplete()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1130
    invoke-static {}, Lim/doit/pro/api/parser/SubTaskParser;->getInstance()Lim/doit/pro/api/parser/SubTaskParser;

    move-result-object v1

    .line 1131
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/SubTaskParser;->serializeForCompleted(Lim/doit/pro/model/SubTask;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uncomplete subtask Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1133
    const-string v1, "subtasks/uncomplete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1134
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1135
    invoke-static {}, Lim/doit/pro/api/parser/SubTaskParser;->getInstance()Lim/doit/pro/api/parser/SubTaskParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/SubTaskParser;->serializeForTrashed(Lim/doit/pro/model/SubTask;)Ljava/lang/String;

    move-result-object v0

    .line 1137
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "delete subtask Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1138
    const-string v1, "subtasks/delete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private uploadTags()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 722
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 723
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->tag:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 724
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 740
    return-void

    .line 724
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 725
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/TagDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/Tag;

    .line 727
    .local v6, "tag":Lim/doit/pro/model/Tag;
    if-nez v6, :cond_2

    .line 728
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadTags uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 729
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 728
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 730
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 733
    :cond_2
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "tag Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 735
    const-string v1, "tags"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 736
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v6}, Lim/doit/pro/model/Tag;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    .line 737
    invoke-direct {p0, v6, v2}, Lim/doit/pro/api/DoitAPI;->whenTagConflict(Lim/doit/pro/model/Tag;Lim/doit/pro/api/Response;)V

    goto :goto_0
.end method

.method private uploadTaskContexts()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 767
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 768
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->context:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 769
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 796
    return-void

    .line 769
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 770
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    .line 771
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/TaskContextDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/TaskContext;

    .line 772
    .local v6, "taskContext":Lim/doit/pro/model/TaskContext;
    if-nez v6, :cond_1

    .line 773
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadTaskContexts uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 774
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 773
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 775
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 778
    :cond_1
    const/4 v2, 0x0

    .line 779
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 780
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create taskcontext Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 782
    const-string v1, "contexts"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 793
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lim/doit/pro/model/TaskContext;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    .line 794
    invoke-direct {p0, v6, v2}, Lim/doit/pro/api/DoitAPI;->whenContextConflict(Lim/doit/pro/model/TaskContext;Lim/doit/pro/api/Response;)V

    goto :goto_0

    .line 783
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 784
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 785
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update taskcontext Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 786
    const-string v1, "contexts/update/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 787
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 788
    invoke-static {}, Lim/doit/pro/api/parser/TaskContextParser;->getInstance()Lim/doit/pro/api/parser/TaskContextParser;

    move-result-object v1

    .line 789
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/TaskContextParser;->serializeForDeleted(Lim/doit/pro/model/TaskContext;)Ljava/lang/String;

    move-result-object v0

    .line 790
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "delete taskcontext Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 791
    const-string v1, "contexts/delete/"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    goto :goto_1
.end method

.method private uploadTasks()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 1019
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 1020
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->task:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1021
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1100
    return-void

    .line 1021
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 1022
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    .line 1023
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getExtraId()Ljava/lang/String;

    move-result-object v5

    .line 1022
    invoke-virtual {v1, v4, v5}, Lim/doit/pro/db/persist/TaskDao;->findFullByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v6

    .line 1024
    .local v6, "task":Lim/doit/pro/model/Task;
    if-nez v6, :cond_1

    .line 1025
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadTasks uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1026
    const-string v4, ", repeatNo : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getExtraId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1025
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 1027
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 1030
    :cond_1
    const/4 v2, 0x0

    .line 1031
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isCreate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1032
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1033
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "create task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1034
    const-string v1, "tasks"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1098
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto/16 :goto_0

    .line 1035
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1036
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1037
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1038
    const-string v1, "tasks/update"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1039
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_4
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1040
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getCompleted()Ljava/util/Calendar;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1041
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto/16 :goto_0

    .line 1044
    :cond_5
    invoke-static {}, Lim/doit/pro/api/parser/TaskParser;->getInstance()Lim/doit/pro/api/parser/TaskParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/TaskParser;->serializeForCompleted(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 1046
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "complete task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1047
    const-string v1, "tasks/complete"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1048
    goto :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_6
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUncomplete()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1049
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getCompleted()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1050
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto/16 :goto_0

    .line 1053
    :cond_7
    invoke-static {}, Lim/doit/pro/api/parser/TaskParser;->getInstance()Lim/doit/pro/api/parser/TaskParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/TaskParser;->serializeForCompleted(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 1055
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uncomplete task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1056
    const-string v1, "tasks/uncomplete"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1057
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_8
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isTrash()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1058
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getTrashed()Ljava/util/Calendar;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1059
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto/16 :goto_0

    .line 1062
    :cond_9
    invoke-static {}, Lim/doit/pro/api/parser/TaskParser;->getInstance()Lim/doit/pro/api/parser/TaskParser;

    move-result-object v1

    .line 1063
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/TaskParser;->serializeForTrashed(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 1064
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "trash task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1065
    const-string v1, "tasks/trash"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1066
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_a
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUntrash()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1067
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getTrashed()Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1068
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto/16 :goto_0

    .line 1071
    :cond_b
    invoke-static {}, Lim/doit/pro/api/parser/TaskParser;->getInstance()Lim/doit/pro/api/parser/TaskParser;

    move-result-object v1

    .line 1072
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/TaskParser;->serializeForTrashed(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "untrash task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1074
    const-string v1, "tasks/untrash"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1075
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_c
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isArchive()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1076
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getArchived()Ljava/util/Calendar;

    move-result-object v1

    if-nez v1, :cond_d

    .line 1077
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto/16 :goto_0

    .line 1080
    :cond_d
    invoke-static {}, Lim/doit/pro/api/parser/TaskParser;->getInstance()Lim/doit/pro/api/parser/TaskParser;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/TaskParser;->serializeForArchived(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "archive task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1083
    const-string v1, "tasks/archive"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1084
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_e
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isHide()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1085
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "hide task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1087
    const-string v1, "tasks/update"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 1088
    goto/16 :goto_1

    .end local v0    # "json":Ljava/lang/String;
    :cond_f
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isDelete()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    invoke-virtual {v6}, Lim/doit/pro/model/Task;->getDeleted()Ljava/util/Calendar;

    move-result-object v1

    if-nez v1, :cond_10

    .line 1090
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto/16 :goto_0

    .line 1093
    :cond_10
    invoke-static {}, Lim/doit/pro/api/parser/TaskParser;->getInstance()Lim/doit/pro/api/parser/TaskParser;

    move-result-object v1

    .line 1094
    invoke-virtual {v1, v6}, Lim/doit/pro/api/parser/TaskParser;->serializeForDeleted(Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v0

    .line 1095
    .restart local v0    # "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "delete task Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 1096
    const-string v1, "tasks/clear"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    goto/16 :goto_1
.end method

.method private uploadUser()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lim/doit/pro/exception/DoitConnectionException;,
            Lim/doit/pro/exception/DoitReSyncException;
        }
    .end annotation

    .prologue
    .line 656
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    .line 657
    sget-object v4, Lim/doit/pro/model/OpLog$ItemType;->user:Lim/doit/pro/model/OpLog$ItemType;

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/OpLogDao;->findLogsByItemType(Lim/doit/pro/model/OpLog$ItemType;)Ljava/util/ArrayList;

    move-result-object v7

    .line 658
    .local v7, "logs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/OpLog;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    return-void

    .line 658
    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lim/doit/pro/model/OpLog;

    .line 659
    .local v3, "log":Lim/doit/pro/model/OpLog;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lim/doit/pro/db/persist/UserDao;->findByUUID(Ljava/lang/String;)Lim/doit/pro/model/BaseEntity;

    move-result-object v6

    check-cast v6, Lim/doit/pro/model/User;

    .line 660
    .local v6, "user":Lim/doit/pro/model/User;
    if-nez v6, :cond_1

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "uploadUser uuid : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->getItemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 662
    const-string v4, " is not exist."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 661
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->e(Ljava/lang/Object;)V

    .line 663
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->opLogDao:Lim/doit/pro/db/persist/OpLogDao;

    invoke-virtual {v1, v3}, Lim/doit/pro/db/persist/OpLogDao;->delete(Lim/doit/pro/model/OpLog;)V

    goto :goto_0

    .line 666
    :cond_1
    invoke-virtual {v6}, Lim/doit/pro/model/User;->getEvernote()Lim/doit/pro/model/Evernote;

    .line 667
    const/4 v2, 0x0

    .line 668
    .local v2, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 669
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v1

    invoke-virtual {v1, v6}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 670
    .local v0, "json":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "update user Json : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 671
    const-string v1, "users/update"

    invoke-direct {p0, v1, v0}, Lim/doit/pro/api/DoitAPI;->putToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 675
    .end local v0    # "json":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Lim/doit/pro/model/User;->getUsn()J

    move-result-wide v4

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/api/DoitAPI;->afterUpload(Lim/doit/pro/api/Response;Lim/doit/pro/model/OpLog;JLim/doit/pro/model/BaseEntity;)V

    goto :goto_0

    .line 672
    :cond_3
    invoke-virtual {v3}, Lim/doit/pro/model/OpLog;->isUpdateAvatar()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0
.end method

.method private whenContextConflict(Lim/doit/pro/model/TaskContext;Lim/doit/pro/api/Response;)V
    .locals 8
    .param p1, "taskContext"    # Lim/doit/pro/model/TaskContext;
    .param p2, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 799
    if-nez p2, :cond_1

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    invoke-virtual {p2}, Lim/doit/pro/api/Response;->isConflict()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 803
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v7, p2, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 804
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 805
    .local v4, "root":Lcom/google/gson/JsonObject;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v3

    .line 806
    .local v3, "parser":Lim/doit/pro/api/parser/ParserUtil;
    const-string v6, "code"

    invoke-virtual {v3, v4, v6}, Lim/doit/pro/api/parser/ParserUtil;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "code":Ljava/lang/String;
    const-string v6, "E03003"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 809
    :try_start_0
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v6

    .line 810
    const-string v7, "data"

    invoke-virtual {v6, v4, v7}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "dataString":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v6

    .line 812
    const-class v7, Lim/doit/pro/model/TaskContext;

    .line 811
    invoke-virtual {v6, v1, v7}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/TaskContext;

    .line 813
    .local v5, "serverTaskContext":Lim/doit/pro/model/TaskContext;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->taskContextDao:Lim/doit/pro/db/persist/TaskContextDao;

    invoke-virtual {v6, p1, v5}, Lim/doit/pro/db/persist/TaskContextDao;->updateConflictTaskContext(Lim/doit/pro/model/TaskContext;Lim/doit/pro/model/TaskContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 815
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v5    # "serverTaskContext":Lim/doit/pro/model/TaskContext;
    :catch_0
    move-exception v2

    .line 816
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private whenGoalConflict(Lim/doit/pro/model/Goal;Lim/doit/pro/api/Response;)V
    .locals 8
    .param p1, "goal"    # Lim/doit/pro/model/Goal;
    .param p2, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 880
    if-nez p2, :cond_1

    .line 901
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    invoke-virtual {p2}, Lim/doit/pro/api/Response;->isConflict()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 884
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v7, p2, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 885
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 886
    .local v4, "root":Lcom/google/gson/JsonObject;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v3

    .line 887
    .local v3, "parser":Lim/doit/pro/api/parser/ParserUtil;
    const-string v6, "code"

    invoke-virtual {v3, v4, v6}, Lim/doit/pro/api/parser/ParserUtil;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "code":Ljava/lang/String;
    const-string v6, "E13003"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 890
    :try_start_0
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v6

    .line 891
    const-string v7, "data"

    invoke-virtual {v6, v4, v7}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "dataString":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v6

    .line 893
    const-class v7, Lim/doit/pro/model/Goal;

    .line 892
    invoke-virtual {v6, v1, v7}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/Goal;

    .line 894
    .local v5, "serverGoal":Lim/doit/pro/model/Goal;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->goalDao:Lim/doit/pro/db/persist/GoalDao;

    invoke-virtual {v6, p1, v5}, Lim/doit/pro/db/persist/GoalDao;->updateConflictGoal(Lim/doit/pro/model/Goal;Lim/doit/pro/model/Goal;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 896
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v5    # "serverGoal":Lim/doit/pro/model/Goal;
    :catch_0
    move-exception v2

    .line 897
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private whenProjectConflict(Lim/doit/pro/model/Project;Lim/doit/pro/api/Response;)V
    .locals 8
    .param p1, "project"    # Lim/doit/pro/model/Project;
    .param p2, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 962
    if-nez p2, :cond_1

    .line 983
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    invoke-virtual {p2}, Lim/doit/pro/api/Response;->isConflict()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 966
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v7, p2, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 967
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 968
    .local v4, "root":Lcom/google/gson/JsonObject;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v3

    .line 969
    .local v3, "parser":Lim/doit/pro/api/parser/ParserUtil;
    const-string v6, "code"

    invoke-virtual {v3, v4, v6}, Lim/doit/pro/api/parser/ParserUtil;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 970
    .local v0, "code":Ljava/lang/String;
    const-string v6, "E02003"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 973
    :try_start_0
    const-string v6, "data"

    .line 972
    invoke-virtual {v3, v4, v6}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "dataString":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v6

    .line 975
    const-class v7, Lim/doit/pro/model/Project;

    .line 974
    invoke-virtual {v6, v1, v7}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/Project;

    .line 976
    .local v5, "serverProject":Lim/doit/pro/model/Project;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->projectDao:Lim/doit/pro/db/persist/ProjectDao;

    invoke-virtual {v6, p1, v5}, Lim/doit/pro/db/persist/ProjectDao;->updateConflictProject(Lim/doit/pro/model/Project;Lim/doit/pro/model/Project;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 978
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v5    # "serverProject":Lim/doit/pro/model/Project;
    :catch_0
    move-exception v2

    .line 979
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private whenTagConflict(Lim/doit/pro/model/Tag;Lim/doit/pro/api/Response;)V
    .locals 8
    .param p1, "tag"    # Lim/doit/pro/model/Tag;
    .param p2, "response"    # Lim/doit/pro/api/Response;

    .prologue
    .line 743
    if-nez p2, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 746
    :cond_1
    invoke-virtual {p2}, Lim/doit/pro/api/Response;->isConflict()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 747
    new-instance v6, Lcom/google/gson/JsonParser;

    invoke-direct {v6}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v7, p2, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    .line 748
    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    .line 749
    .local v4, "root":Lcom/google/gson/JsonObject;
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v3

    .line 750
    .local v3, "parser":Lim/doit/pro/api/parser/ParserUtil;
    const-string v6, "code"

    invoke-virtual {v3, v4, v6}, Lim/doit/pro/api/parser/ParserUtil;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 751
    .local v0, "code":Ljava/lang/String;
    const-string v6, "E044"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 753
    :try_start_0
    invoke-static {}, Lim/doit/pro/api/parser/ParserUtil;->getInstance()Lim/doit/pro/api/parser/ParserUtil;

    move-result-object v6

    .line 754
    const-string v7, "data"

    invoke-virtual {v6, v4, v7}, Lim/doit/pro/api/parser/ParserUtil;->getNodeAsString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 755
    .local v1, "dataString":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v6

    .line 756
    const-class v7, Lim/doit/pro/model/Tag;

    .line 755
    invoke-virtual {v6, v1, v7}, Lim/doit/pro/utils/JsonFormat;->deserialize(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lim/doit/pro/model/Tag;

    .line 757
    .local v5, "serverTag":Lim/doit/pro/model/Tag;
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->tagDao:Lim/doit/pro/db/persist/TagDao;

    invoke-virtual {v6, p1, v5}, Lim/doit/pro/db/persist/TagDao;->updateConflictTag(Lim/doit/pro/model/Tag;Lim/doit/pro/model/Tag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 758
    .end local v1    # "dataString":Ljava/lang/String;
    .end local v5    # "serverTag":Lim/doit/pro/model/Tag;
    :catch_0
    move-exception v2

    .line 759
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public changeServer(Ljava/lang/String;)V
    .locals 3
    .param p1, "server"    # Ljava/lang/String;

    .prologue
    .line 97
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    invoke-virtual {v0, p1}, Lim/doit/pro/api/APIConfig;->changeServer(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    iget-object v1, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    invoke-virtual {v1}, Lim/doit/pro/api/APIConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    invoke-virtual {v2}, Lim/doit/pro/api/APIConfig;->getScopePort()I

    move-result v2

    .line 99
    invoke-virtual {v0, v1, v2}, Lim/doit/pro/api/HttpApi;->setAuthScope(Ljava/lang/String;I)V

    .line 102
    :cond_0
    return-void
.end method

.method public checkPassword(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 7
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 159
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "response":Lim/doit/pro/api/Response;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v3, "url":Ljava/lang/StringBuilder;
    const-string v4, "users/login"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "apiUrl":Ljava/lang/String;
    iget-object v4, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-virtual {v4, v0}, Lim/doit/pro/api/HttpApi;->doHttpGet(Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v2

    .line 166
    invoke-direct {p0, v2}, Lim/doit/pro/api/DoitAPI;->isSuccess(Lim/doit/pro/api/Response;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-static {p2}, Lim/doit/pro/utils/PrefUtils;->savePassword(Ljava/lang/String;)Z

    .line 168
    const/4 v4, 0x0

    invoke-static {v4}, Lim/doit/pro/utils/PrefUtils;->saveLoginAgain(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :cond_0
    invoke-direct {p0, v2}, Lim/doit/pro/api/DoitAPI;->isFailed(Lim/doit/pro/api/Response;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-virtual {p0, v6, v6}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .end local v0    # "apiUrl":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/StringBuilder;
    :cond_1
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    const/4 v2, 0x0

    .line 175
    invoke-direct {p0, v2}, Lim/doit/pro/api/DoitAPI;->isFailed(Lim/doit/pro/api/Response;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 176
    invoke-virtual {p0, v6, v6}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    .line 175
    invoke-direct {p0, v2}, Lim/doit/pro/api/DoitAPI;->isFailed(Lim/doit/pro/api/Response;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 176
    invoke-virtual {p0, v6, v6}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_2
    throw v4
.end method

.method public checkout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 2
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 191
    const/4 v1, 0x0

    invoke-static {v1}, Lim/doit/pro/utils/PrefUtils;->saveCheckoutFinish(Z)V

    .line 192
    invoke-virtual {p0, p1, p2}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p1, p2}, Lim/doit/pro/api/DoitAPI;->checkout(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v0

    .line 194
    .local v0, "response":Lim/doit/pro/api/Response;
    invoke-direct {p0, v0}, Lim/doit/pro/api/DoitAPI;->isSuccess(Lim/doit/pro/api/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {p1, p2, p3}, Lim/doit/pro/utils/PrefUtils;->saveLoginInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 196
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lim/doit/pro/api/DoitAPI;->saveSyncLog(Lim/doit/pro/api/Response;Lim/doit/pro/model/BaseEntity;)V

    .line 198
    :cond_0
    return-object v0
.end method

.method public clearCredentials(Ljava/lang/String;)V
    .locals 1
    .param p1, "defaultServer"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 121
    invoke-virtual {p0, p1}, Lim/doit/pro/api/DoitAPI;->changeServer(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0, v0, v0}, Lim/doit/pro/api/DoitAPI;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public getNewestVersion(Landroid/content/Context;)Lim/doit/pro/api/Response;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 203
    :try_start_0
    invoke-static {}, Lim/doit/pro/api/utils/D;->isCn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    iget-object v1, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    const-string v2, "versions/android"

    invoke-direct {p0, v2}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/api/HttpApi;->doHttpGet(Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v1

    .line 210
    :goto_0
    return-object v1

    .line 206
    :cond_0
    iget-object v1, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    const-string v2, "versions/android_intl"

    invoke-direct {p0, v2}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lim/doit/pro/api/HttpApi;->doHttpGet(Ljava/lang/String;)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 210
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasCredentials()Z
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-virtual {v0}, Lim/doit/pro/api/HttpApi;->hasCredentials()Z

    move-result v0

    return v0
.end method

.method public postFeedback(Lim/doit/pro/model/Feedback;)Lim/doit/pro/api/Response;
    .locals 9
    .param p1, "feedback"    # Lim/doit/pro/model/Feedback;

    .prologue
    .line 298
    invoke-static {}, Lim/doit/pro/api/utils/D;->isCn()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v1, "help.doitim.com"

    .line 300
    .local v1, "host":Ljava/lang/String;
    :goto_0
    new-instance v2, Lim/doit/pro/api/HttpApiWithBasicAuth;

    const/16 v8, 0x1bb

    invoke-direct {v2, v1, v8}, Lim/doit/pro/api/HttpApiWithBasicAuth;-><init>(Ljava/lang/String;I)V

    .line 301
    .local v2, "httpApi":Lim/doit/pro/api/HttpApiWithBasicAuth;
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getLoginUsername()Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "username":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/utils/PrefUtils;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 303
    .local v4, "password":Ljava/lang/String;
    invoke-static {v7}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 304
    invoke-static {v4}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 305
    invoke-virtual {v2, v7, v4}, Lim/doit/pro/api/HttpApiWithBasicAuth;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    :cond_0
    const/4 v6, 0x0

    .line 308
    .local v6, "url":Ljava/lang/String;
    invoke-static {}, Lim/doit/pro/api/utils/D;->isCn()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 309
    const-string v6, "https://help.doitim.com/api/1/feedback"

    .line 313
    :goto_1
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->json()Lim/doit/pro/utils/JsonFormat;

    move-result-object v8

    invoke-virtual {v8, p1}, Lim/doit/pro/utils/JsonFormat;->serialize(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, "json":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v2, v6, v3}, Lim/doit/pro/api/HttpApiWithBasicAuth;->doHttpPost(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Lim/doit/pro/exception/DoitConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 321
    .local v5, "response":Lim/doit/pro/api/Response;
    invoke-virtual {v2}, Lim/doit/pro/api/HttpApiWithBasicAuth;->shutDown()V

    .line 319
    .end local v5    # "response":Lim/doit/pro/api/Response;
    :goto_2
    return-object v5

    .line 299
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "httpApi":Lim/doit/pro/api/HttpApiWithBasicAuth;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "username":Ljava/lang/String;
    :cond_1
    const-string v1, "help.doit.im"

    goto :goto_0

    .line 311
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "httpApi":Lim/doit/pro/api/HttpApiWithBasicAuth;
    .restart local v4    # "password":Ljava/lang/String;
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "username":Ljava/lang/String;
    :cond_2
    const-string v6, "https://help.doit.im/api/1/feedback"

    goto :goto_1

    .line 317
    .restart local v3    # "json":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Lim/doit/pro/exception/DoitConnectionException;
    :try_start_1
    invoke-virtual {v0}, Lim/doit/pro/exception/DoitConnectionException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 321
    invoke-virtual {v2}, Lim/doit/pro/api/HttpApiWithBasicAuth;->shutDown()V

    .line 319
    const/4 v5, 0x0

    goto :goto_2

    .line 320
    .end local v0    # "e":Lim/doit/pro/exception/DoitConnectionException;
    :catchall_0
    move-exception v8

    .line 321
    invoke-virtual {v2}, Lim/doit/pro/api/HttpApiWithBasicAuth;->shutDown()V

    .line 322
    throw v8
.end method

.method public regist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "response":Lim/doit/pro/api/Response;
    :try_start_0
    const-string v2, "users"

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/api/DoitAPI;->buildUserJsonString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-direct {p0, v2, v3}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v1

    .line 130
    invoke-direct {p0, v1}, Lim/doit/pro/api/DoitAPI;->isSuccess(Lim/doit/pro/api/Response;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    const-string v2, "DOIT"

    invoke-virtual {p0, p1, p3, v2}, Lim/doit/pro/api/DoitAPI;->checkout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    return-object v1

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCredentials(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 117
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-virtual {v0, p1, p2}, Lim/doit/pro/api/HttpApi;->setCredentials(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public signinWithGoogle(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    .locals 4
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "token"    # Ljava/lang/String;

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 143
    .local v1, "response":Lim/doit/pro/api/Response;
    :try_start_0
    const-string v2, "users/google/login"

    .line 144
    invoke-direct {p0, p1, p2}, Lim/doit/pro/api/DoitAPI;->buildGoogleUserJsonString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 143
    invoke-direct {p0, v2, v3}, Lim/doit/pro/api/DoitAPI;->postToServer(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;

    move-result-object v1

    .line 145
    invoke-direct {p0, v1}, Lim/doit/pro/api/DoitAPI;->isSuccess(Lim/doit/pro/api/Response;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    iget-object v3, v1, Lim/doit/pro/api/Response;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 147
    const-string v3, "data"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v2

    .line 148
    const-string v3, "doit_token"

    invoke-virtual {v2, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p2

    .line 149
    const-string v2, "GOOGLE"

    invoke-virtual {p0, p1, p2, v2}, Lim/doit/pro/api/DoitAPI;->checkout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-object v1

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized sync()Lim/doit/pro/api/Response;
    .locals 4

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    const-string v2, "doit api start sync"

    invoke-static {v2}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    const/4 v1, 0x0

    .line 285
    .local v1, "response":Lim/doit/pro/api/Response;
    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_1
    invoke-direct {p0, v2, v3}, Lim/doit/pro/api/DoitAPI;->startDownload(ZZ)Lim/doit/pro/api/Response;

    move-result-object v1

    .line 286
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lim/doit/pro/api/DoitAPI;->saveSyncLog(Lim/doit/pro/api/Response;Lim/doit/pro/model/BaseEntity;)V

    .line 287
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->upload()V
    :try_end_1
    .catch Lim/doit/pro/exception/DoitReSyncException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 294
    :goto_0
    monitor-exit p0

    return-object v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Lim/doit/pro/exception/DoitReSyncException;
    :try_start_2
    invoke-virtual {p0}, Lim/doit/pro/api/DoitAPI;->sync()Lim/doit/pro/api/Response;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 282
    .end local v0    # "e":Lim/doit/pro/exception/DoitReSyncException;
    .end local v1    # "response":Lim/doit/pro/api/Response;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 290
    .restart local v1    # "response":Lim/doit/pro/api/Response;
    :catch_1
    move-exception v0

    .line 291
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public syncAvatars()V
    .locals 9

    .prologue
    .line 252
    const-string v6, "start sync avatars"

    invoke-static {v6}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 253
    const/4 v6, 0x0

    invoke-static {v6}, Lim/doit/pro/utils/PrefUtils;->saveDownloadAvatars(Z)V

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    .local v5, "userAvatarUrl":Ljava/lang/StringBuilder;
    const-string v6, "avatars/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    iget-object v6, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    .line 258
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 257
    invoke-direct {p0, v7}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lim/doit/pro/api/HttpApi;->getImageFromServer(Ljava/lang/String;)[B

    move-result-object v4

    .line 259
    .local v4, "userAvatar":[B
    if-eqz v4, :cond_0

    .line 260
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->userDao:Lim/doit/pro/db/persist/UserDao;

    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v7

    invoke-virtual {v7}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lim/doit/pro/db/persist/UserDao;->updateAvatar(Ljava/lang/String;[B)V

    .line 264
    :cond_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v6

    iget-object v6, v6, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v6}, Lim/doit/pro/db/persist/ContactDao;->findAll()Ljava/util/ArrayList;

    move-result-object v1

    .line 265
    .local v1, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lim/doit/pro/model/Contact;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    .line 279
    return-void

    .line 265
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lim/doit/pro/model/Contact;

    .line 266
    .local v2, "item":Lim/doit/pro/model/Contact;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .local v3, "url":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lim/doit/pro/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 270
    const-string v7, "avatars/"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Lim/doit/pro/model/Contact;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v7, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    .line 273
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 272
    invoke-direct {p0, v8}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lim/doit/pro/api/HttpApi;->getImageFromServer(Ljava/lang/String;)[B

    move-result-object v0

    .line 274
    .local v0, "avatar":[B
    if-eqz v0, :cond_1

    .line 275
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v7

    iget-object v7, v7, Lim/doit/pro/db/Persist;->contactDao:Lim/doit/pro/db/persist/ContactDao;

    invoke-virtual {v2}, Lim/doit/pro/model/Contact;->getUuid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lim/doit/pro/db/persist/ContactDao;->updateAvatar(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public syncGcal()Lim/doit/pro/api/Response;
    .locals 6

    .prologue
    .line 215
    const-string v4, "doit api start sync gcal"

    invoke-static {v4}, Lim/doit/pro/utils/Logger;->d(Ljava/lang/Object;)V

    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "response":Lim/doit/pro/api/Response;
    :try_start_0
    const-string v3, "calendar/pull"

    .line 219
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    invoke-direct {p0, v3}, Lim/doit/pro/api/DoitAPI;->getAPIUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lim/doit/pro/api/HttpApi;->doHttpGet(Ljava/lang/String;)Lim/doit/pro/api/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v2, v1

    .line 225
    .end local v1    # "response":Lim/doit/pro/api/Response;
    .end local v3    # "url":Ljava/lang/String;
    .local v2, "response":Lim/doit/pro/api/Response;
    :goto_0
    return-object v2

    .line 221
    .end local v2    # "response":Lim/doit/pro/api/Response;
    .restart local v1    # "response":Lim/doit/pro/api/Response;
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    const/4 v1, 0x0

    move-object v2, v1

    .line 225
    .end local v1    # "response":Lim/doit/pro/api/Response;
    .restart local v2    # "response":Lim/doit/pro/api/Response;
    goto :goto_0
.end method

.method public updateHost()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    if-nez v0, :cond_0

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lim/doit/pro/api/DoitAPI;->mHttpApi:Lim/doit/pro/api/HttpApi;

    iget-object v1, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    invoke-virtual {v1}, Lim/doit/pro/api/APIConfig;->getHost()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/api/DoitAPI;->mApiConfig:Lim/doit/pro/api/APIConfig;

    invoke-virtual {v2}, Lim/doit/pro/api/APIConfig;->getScopePort()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lim/doit/pro/api/HttpApi;->setAuthScope(Ljava/lang/String;I)V

    .line 109
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->initCredentials()V

    goto :goto_0
.end method

.method public uploadAvatars()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lim/doit/pro/api/DoitAPI;->uploadMyAvatar()V

    .line 230
    return-void
.end method
