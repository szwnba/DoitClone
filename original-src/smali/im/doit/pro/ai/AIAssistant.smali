.class public Lim/doit/pro/ai/AIAssistant;
.super Ljava/lang/Object;
.source "AIAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ai/AIAssistant$StreamCb;,
        Lim/doit/pro/ai/AIAssistant$OnOk;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://token.sensenova.cn/v1"

.field public static final DEFAULT_MODEL:Ljava/lang/String; = "sensenova-6.7-flash-lite"

.field private static final K_ENDPOINT:Ljava/lang/String; = "endpoint"

.field private static final K_KEY:Ljava/lang/String; = "key"

.field private static final K_MODEL:Ljava/lang/String; = "model"

.field private static final MAIN:Landroid/os/Handler;

.field public static final PREFS:Ljava/lang/String; = "doit_ai_assist"

.field private static final STEP_LINE:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 47
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    .line 295
    const-string v0, "^\\s*(\\d{1,2})[.\u3001)\uff09]\\s*(\\S.{3,80})$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lim/doit/pro/ai/AIAssistant;->STEP_LINE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->readAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 38
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .registers 1

    .line 38
    sget-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static appDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;
    .registers 13

    .line 435
    new-instance p6, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Theme.Doit.Light.Dialog"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-direct {p6, p0, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 436
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "layout"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 437
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "ghs_msg"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 439
    if-eqz p2, :cond_60

    if-eqz p3, :cond_60

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    :cond_60
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string p3, "ghs_input"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p3, v3, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    .line 441
    if-eqz p2, :cond_8b

    .line 442
    if-eqz p8, :cond_7d

    const/16 p3, 0x81

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 443
    :cond_7d
    invoke-virtual {p2, p7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 444
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 446
    :cond_8b
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string p7, "cancel_btn"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p3, p7, v3, p8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lim/doit/pro/ui/component/DButton;

    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p7

    const-string p8, "ok_btn"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p7, p8, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lim/doit/pro/ui/component/DButton;

    .line 448
    if-eqz p4, :cond_b8

    invoke-virtual {p0, p4}, Lim/doit/pro/ui/component/DButton;->setText(Ljava/lang/CharSequence;)V

    .line 449
    :cond_b8
    new-instance p4, Lim/doit/pro/ai/AIAssistant$9;

    invoke-direct {p4, p6}, Lim/doit/pro/ai/AIAssistant$9;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance p3, Lim/doit/pro/ai/AIAssistant$10;

    invoke-direct {p3, p6, p5, p2}, Lim/doit/pro/ai/AIAssistant$10;-><init>(Landroid/app/Dialog;Lim/doit/pro/ai/AIAssistant$OnOk;Landroid/widget/EditText;)V

    invoke-virtual {p0, p3}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    invoke-virtual {p6, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 459
    return-object p6
.end method

.method public static applyToTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    .line 325
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object p0

    iget-object p0, p0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object p0

    .line 326
    if-nez p0, :cond_e

    const/4 p0, -0x1

    return p0

    .line 327
    :cond_e
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V

    .line 328
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object p1

    iget-object p1, p1, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p1, p0}, Lim/doit/pro/db/persist/TaskDao;->updateAndSaveLog(Lim/doit/pro/model/Task;)V

    .line 329
    nop

    .line 331
    const/4 p1, 0x0

    :try_start_20
    invoke-static {p3}, Lim/doit/pro/ai/AIAssistant;->parseSteps(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_68

    .line 332
    const/4 p3, 0x0

    :goto_25
    :try_start_25
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_64

    .line 333
    new-instance v0, Lim/doit/pro/model/SubTask;

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lim/doit/pro/model/SubTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setUuid(Ljava/lang/String;)V

    .line 335
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/model/SubTask;->setTitle(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Lim/doit/pro/model/SubTask;->initPos()V

    .line 337
    invoke-virtual {p0}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v1

    iget-object v1, v1, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v1, v0}, Lim/doit/pro/db/persist/SubTaskDao;->createAndSaveLog(Lim/doit/pro/model/SubTask;)V
    :try_end_5f
    .catchall {:try_start_25 .. :try_end_5f} :catchall_65

    .line 339
    add-int/lit8 p3, p3, 0x1

    .line 332
    add-int/lit8 p1, p1, 0x1

    goto :goto_25

    .line 341
    :cond_64
    goto :goto_6a

    :catchall_65
    move-exception p0

    move p1, p3

    goto :goto_69

    :catchall_68
    move-exception p0

    :goto_69
    move p3, p1

    .line 342
    :goto_6a
    return p3
.end method

.method private static brief(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 285
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 287
    :cond_5
    :try_start_5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    return-object p0

    .line 288
    :catch_11
    move-exception v0

    .line 289
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x78

    if-le v0, v1, :cond_1f

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1f
    return-object p0
.end method

.method public static chat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 241
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 242
    const-string v1, "model"

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 244
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "system"

    const-string v4, "role"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "content"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 245
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "user"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 246
    const-string p1, "messages"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 247
    const-string p1, "temperature"

    const-wide v1, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 249
    nop

    .line 251
    const/4 p1, 0x0

    :try_start_4c
    new-instance p2, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->endpoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "/+$"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/chat/completions"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_76
    .catchall {:try_start_4c .. :try_end_76} :catchall_155

    .line 252
    const/16 p1, 0x3a98

    :try_start_78
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 253
    const p1, 0x1d4c0

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 254
    const-string p1, "POST"

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 255
    const-string p1, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bearer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string p0, "Content-Type"

    const-string p1, "application/json"

    invoke-virtual {p2, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string p0, "User-Agent"

    const-string p1, "DoitLocalAI/1.0"

    invoke-virtual {p2, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 259
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_b8
    .catchall {:try_start_78 .. :try_end_b8} :catchall_152

    .line 260
    :try_start_b8
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_c5
    .catchall {:try_start_b8 .. :try_end_c5} :catchall_14d

    :try_start_c5
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 261
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 262
    const/16 p1, 0x190

    if-lt p0, p1, :cond_d5

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_d9

    :cond_d5
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    :goto_d9
    invoke-static {p1}, Lim/doit/pro/ai/AIAssistant;->readAll(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    .line 263
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_126

    .line 264
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 265
    const-string v0, "choices"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 266
    if-eqz p0, :cond_109

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_109

    .line 267
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "message"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_103
    .catchall {:try_start_c5 .. :try_end_103} :catchall_152

    .line 269
    if-eqz p2, :cond_108

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 267
    :cond_108
    return-object p0

    .line 266
    :cond_109
    :try_start_109
    new-instance p0, Ljava/lang/Exception;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65e0\u8fd4\u56de\u5185\u5bb9 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lim/doit/pro/ai/AIAssistant;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_126
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HTTP "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lim/doit/pro/ai/AIAssistant;->brief(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :catchall_14d
    move-exception p1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_152
    .catchall {:try_start_109 .. :try_end_152} :catchall_152

    .line 269
    :catchall_152
    move-exception p0

    move-object p1, p2

    goto :goto_156

    :catchall_155
    move-exception p0

    :goto_156
    if-eqz p1, :cond_15b

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 270
    :cond_15b
    throw p0
.end method

.method public static chatStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$StreamCb;)V
    .registers 6

    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lim/doit/pro/ai/AIAssistant$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lim/doit/pro/ai/AIAssistant$2;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$StreamCb;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 236
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 237
    return-void
.end method

.method public static endpoint(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 56
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "endpoint"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "https://token.sensenova.cn/v1"

    :cond_14
    return-object p0
.end method

.method private static findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .line 88
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 89
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    .line 92
    :cond_18
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 93
    check-cast p0, Landroid/view/ViewGroup;

    .line 94
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_30

    return-object v1

    .line 94
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 99
    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTaskOn(Ljava/lang/Object;)Lim/doit/pro/model/Task;
    .registers 3

    .line 128
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTask"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 129
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 130
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lim/doit/pro/model/Task;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p0

    .line 131
    :catchall_15
    move-exception p0

    .line 132
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .registers 1

    .line 356
    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static key(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 61
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;
    .registers 3

    .line 317
    :try_start_0
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object p0

    iget-object p0, p0, Lim/doit/pro/db/Persist;->taskDao:Lim/doit/pro/db/persist/TaskDao;

    invoke-virtual {p0, p1, p2}, Lim/doit/pro/db/persist/TaskDao;->findByUUIDAndRepeatNo(Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object p0
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_b

    return-object p0

    .line 318
    :catchall_b
    move-exception p0

    .line 319
    const/4 p0, 0x0

    return-object p0
.end method

.method public static model(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 65
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "model"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "sensenova-6.7-flash-lite"

    :cond_14
    return-object p0
.end method

.method public static openPlan(Landroid/app/Activity;)V
    .registers 6

    .line 106
    :try_start_0
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->getTaskOn(Ljava/lang/Object;)Lim/doit/pro/model/Task;

    move-result-object v0

    .line 107
    if-nez v0, :cond_c

    const-string v0, "\u4efb\u52a1\u672a\u52a0\u8f7d"

    invoke-static {p0, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_c
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ai/AIAssistant;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_24

    const-string v0, "\u8bf7\u5148\u586b\u5199\u4efb\u52a1\u6807\u9898"

    invoke-static {p0, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 110
    :cond_24
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_42

    .line 111
    const-string v0, "\u8bf7\u5148\u5728 \u8bbe\u7f6e \u2192 AI \u52a9\u7406 \u91cc\u914d\u7f6e API Key"

    invoke-static {p0, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 112
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "im.doit.pro.ai.AISettingsActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void

    .line 115
    :cond_42
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 116
    const-string v3, "im.doit.pro.ai.AIPlanActivity"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    const-string v3, "taskUuid"

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string v3, "taskRepeatNo"

    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const-string v0, "taskTitle"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_66
    .catchall {:try_start_0 .. :try_end_66} :catchall_67

    .line 123
    goto :goto_7e

    .line 121
    :catchall_67
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6253\u5f00 AI \u65b9\u6848\u5931\u8d25: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 124
    :goto_7e
    return-void
.end method

.method public static parseSteps(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    if-nez p0, :cond_8

    return-object v0

    .line 301
    :cond_8
    nop

    .line 302
    const-string v1, "\u3010\u884c\u52a8\u6b65\u9aa4\u3011"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 303
    if-ltz v1, :cond_24

    .line 304
    add-int/lit8 v2, v1, 0x6

    const-string v3, "\u3010"

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 305
    if-le v2, v1, :cond_20

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_24

    :cond_20
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 307
    :cond_24
    :goto_24
    sget-object v1, Lim/doit/pro/ai/AIAssistant;->STEP_LINE:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 308
    :goto_2a
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0xc

    if-ge v1, v2, :cond_45

    .line 309
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    .line 311
    :cond_45
    return-object v0
.end method

.method public static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 52
    const-string v0, "doit_ai_assist"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static readAll(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 275
    if-eqz p0, :cond_19

    .line 276
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 278
    :goto_b
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_16

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_b

    .line 279
    :cond_16
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 281
    :cond_19
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method private static row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V
    .registers 13

    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 419
    instance-of v1, v0, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v1, :cond_26

    .line 420
    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v7, Lim/doit/pro/ai/AIAssistant$8;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/ai/AIAssistant$8;-><init>(Ljava/lang/String;Landroid/app/Activity;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 431
    :cond_26
    return-void
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 354
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static systemPrompt()Ljava/lang/String;
    .registers 1

    .line 139
    const-string v0, "\u4f60\u662f\u4e00\u4f4d\u8d44\u6df1\u7684 GTD \u4e2a\u4eba\u7ba1\u7406\u6559\u7ec3\u548c\u9879\u76ee\u89c4\u5212\u4e13\u5bb6\u3002\u7528\u6237\u7ed9\u4f60\u4e00\u4e2a\u4efb\u52a1\uff0c\u8bf7\u751f\u6210\u52a1\u5b9e\u3001\u53ef\u6267\u884c\u7684\u884c\u52a8\u65b9\u6848\u3002\u4e25\u683c\u6309\u4ee5\u4e0b\u7eaf\u6587\u672c\u683c\u5f0f\u8f93\u51fa\uff08\u7981\u6b62 markdown\u3001\u7981\u6b62\u4ee3\u7801\u5757\u3001\u7981\u6b62\u591a\u4f59\u5bd2\u6684\uff09\uff1a\n\u3010\u76ee\u6807\u3011\u4e00\u53e5\u8bdd\u6f84\u6e05\u76ee\u6807\u4e0e\u5b8c\u6210\u6807\u51c6\n\u3010\u884c\u52a8\u6b65\u9aa4\u3011\n1. \u52a8\u8bcd\u5f00\u5934\u7684\u5177\u4f53\u884c\u52a8\uff08\u7ea6X\u5206\u949f/\u5c0f\u65f6\uff09\n2. \u2026\n\u3010\u98ce\u9669\u63d0\u793a\u3011\n\u00b7 \u5173\u952e\u98ce\u9669\u4e0e\u89c4\u907f\u5efa\u8bae\uff082~3 \u6761\uff09\n\u8981\u6c42\uff1a\u6b65\u9aa4 3~8 \u6761\u3001\u6309\u6267\u884c\u987a\u5e8f\u3001\u5355\u6761 2 \u5c0f\u65f6\u5185\u53ef\u5b8c\u6210\uff1b\u4efb\u52a1\u5f88\u5c0f\u5c31\u53ea\u7ed9 1~3 \u6761\uff0c\u4e0d\u8fc7\u5ea6\u62c6\u89e3\uff1b\u5168\u90e8\u7b80\u4f53\u4e2d\u6587\u3002"

    return-object v0
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 348
    sget-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    new-instance v1, Lim/doit/pro/ai/AIAssistant$3;

    invoke-direct {v1, p0, p1}, Lim/doit/pro/ai/AIAssistant$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    return-void
.end method

.method public static userPrompt(Landroid/content/Context;Lim/doit/pro/model/Task;)Ljava/lang/String;
    .registers 5

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4eca\u5929\u7684\u65e5\u671f\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd EEEE"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n\u4efb\u52a1\u6807\u9898\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 152
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ai/AIAssistant;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\n\u5df2\u6709\u63cf\u8ff0\uff1a"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 153
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/ai/AIAssistant;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string p1, "\u65e0"

    goto :goto_4e

    :cond_4a
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object p1

    :goto_4e
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\n\u8bf7\u6309\u683c\u5f0f\u751f\u6210\u884c\u52a8\u65b9\u6848\u3002"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 151
    return-object p0
.end method

.method public static wire(Landroid/app/Activity;)V
    .registers 3

    .line 73
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "AI \u52a9\u7406"

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 74
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "AI Assistant"

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 75
    :cond_1e
    if-eqz v0, :cond_30

    .line 76
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 77
    new-instance v1, Lim/doit/pro/ai/AIAssistant$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    goto :goto_30

    .line 84
    :catchall_2f
    move-exception p0

    :cond_30
    :goto_30
    nop

    .line 85
    return-void
.end method

.method public static wireSettings(Landroid/app/Activity;)V
    .registers 6

    .line 361
    new-instance v0, Lim/doit/pro/ai/AIAssistant$4;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$4;-><init>(Landroid/app/Activity;)V

    .line 368
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->endpoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 361
    const-string v2, "ai_endpoint"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v1, v3}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 369
    new-instance v0, Lim/doit/pro/ai/AIAssistant$5;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$5;-><init>(Landroid/app/Activity;)V

    .line 376
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 369
    const-string v2, "ai_key"

    const/4 v4, 0x1

    invoke-static {p0, v2, v0, v1, v4}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 377
    new-instance v0, Lim/doit/pro/ai/AIAssistant$6;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$6;-><init>(Landroid/app/Activity;)V

    .line 384
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v2, "ai_model"

    invoke-static {p0, v2, v0, v1, v3}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 385
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ai_test"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 386
    instance-of v1, v0, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v1, :cond_4e

    .line 387
    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v1, Lim/doit/pro/ai/AIAssistant$7;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 411
    :cond_4e
    return-void
.end method
