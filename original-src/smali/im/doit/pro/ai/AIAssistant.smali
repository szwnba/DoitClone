.class public Lim/doit/pro/ai/AIAssistant;
.super Ljava/lang/Object;
.source "AIAssistant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ai/AIAssistant$OnOk;,
        Lim/doit/pro/ai/AIAssistant$PlanResult;
    }
.end annotation


# static fields
.field public static final DEFAULT_ENDPOINT:Ljava/lang/String; = "https://token.sensenova.cn/v1"

.field public static final DEFAULT_MODEL:Ljava/lang/String; = "sensenova-6.7-flash-lite"

.field private static final K_ENDPOINT:Ljava/lang/String; = "endpoint"

.field private static final K_KEY:Ljava/lang/String; = "key"

.field private static final K_MODEL:Ljava/lang/String; = "model"

.field private static final MAIN:Landroid/os/Handler;

.field private static final ME:Ljava/lang/String; = "doit-local-user"

.field public static final PREFS:Ljava/lang/String; = "doit_ai_assist"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/activity/TaskDetailFragment;)V
    .registers 1

    .line 38
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->onPlanClick(Lim/doit/pro/activity/TaskDetailFragment;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Z)V
    .registers 4

    .line 38
    invoke-static {p0, p1, p2, p3}, Lim/doit/pro/ai/AIAssistant;->generate(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;Lim/doit/pro/model/Task;)Lim/doit/pro/ai/AIAssistant$PlanResult;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->requestPlan(Landroid/app/Activity;Lim/doit/pro/model/Task;)Lim/doit/pro/ai/AIAssistant$PlanResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V
    .registers 4

    .line 38
    invoke-static {p0, p1, p2, p3}, Lim/doit/pro/ai/AIAssistant;->showPreview(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 38
    sget-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V
    .registers 5

    .line 38
    invoke-static {p0, p1, p2, p3, p4}, Lim/doit/pro/ai/AIAssistant;->apply(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1, p2}, Lim/doit/pro/ai/AIAssistant;->chat(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;
    .registers 9

    .line 38
    invoke-static/range {p0 .. p8}, Lim/doit/pro/ai/AIAssistant;->appDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static appDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;
    .registers 13

    .line 416
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

    .line 417
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

    .line 418
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

    .line 419
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

    .line 420
    if-eqz p2, :cond_60

    if-eqz p3, :cond_60

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 421
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

    .line 422
    if-eqz p2, :cond_8b

    .line 423
    if-eqz p8, :cond_7d

    const/16 p3, 0x81

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 424
    :cond_7d
    invoke-virtual {p2, p7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 425
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 427
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

    .line 428
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

    .line 429
    if-eqz p4, :cond_b8

    invoke-virtual {p0, p4}, Lim/doit/pro/ui/component/DButton;->setText(Ljava/lang/CharSequence;)V

    .line 430
    :cond_b8
    new-instance p4, Lim/doit/pro/ai/AIAssistant$8;

    invoke-direct {p4, p6}, Lim/doit/pro/ai/AIAssistant$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    new-instance p3, Lim/doit/pro/ai/AIAssistant$9;

    invoke-direct {p3, p6, p5, p2}, Lim/doit/pro/ai/AIAssistant$9;-><init>(Landroid/app/Dialog;Lim/doit/pro/ai/AIAssistant$OnOk;Landroid/widget/EditText;)V

    invoke-virtual {p0, p3}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    invoke-virtual {p6, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 442
    return-object p6
.end method

.method private static apply(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V
    .registers 12

    .line 272
    :try_start_0
    invoke-virtual {p1}, Lim/doit/pro/activity/TaskDetailFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "notes"

    const-string v3, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 273
    invoke-static {p3}, Lim/doit/pro/ai/AIAssistant;->buildDoc(Lim/doit/pro/ai/AIAssistant$PlanResult;)Ljava/lang/String;

    move-result-object v1

    .line 274
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_26

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 275
    :cond_26
    invoke-virtual {p2, v1}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 278
    :goto_29
    goto :goto_34

    .line 276
    :catchall_2a
    move-exception v0

    .line 277
    :try_start_2b
    invoke-static {p3}, Lim/doit/pro/ai/AIAssistant;->buildDoc(Lim/doit/pro/ai/AIAssistant$PlanResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    goto :goto_34

    :catchall_33
    move-exception v0

    .line 280
    :goto_34
    const/4 v0, 0x0

    aput v0, p4, v0

    .line 282
    const/4 v1, 0x0

    :goto_38
    const/4 v2, 0x1

    :try_start_39
    iget-object v3, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_aa

    .line 283
    new-instance v3, Lim/doit/pro/model/SubTask;

    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lim/doit/pro/model/SubTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/model/SubTask;->setUuid(Ljava/lang/String;)V

    .line 285
    iget-object v4, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 286
    iget-object v5, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 287
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\uff08\u7ea6"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\uff09"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    :cond_8c
    invoke-virtual {v3, v4}, Lim/doit/pro/model/SubTask;->setTitle(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v3}, Lim/doit/pro/model/SubTask;->initPos()V

    .line 290
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v4, v3}, Lim/doit/pro/db/persist/SubTaskDao;->createAndSaveLog(Lim/doit/pro/model/SubTask;)V

    .line 292
    aget v3, p4, v0

    add-int/2addr v3, v2

    aput v3, p4, v0
    :try_end_a7
    .catchall {:try_start_39 .. :try_end_a7} :catchall_ab

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 296
    :cond_aa
    goto :goto_c6

    .line 294
    :catchall_ab
    move-exception p2

    .line 295
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5b50\u4efb\u52a1\u5199\u5165\u5931\u8d25: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 299
    :goto_c6
    :try_start_c6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "setSubtaskViewContent"

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 300
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 301
    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_da
    .catchall {:try_start_c6 .. :try_end_da} :catchall_db

    goto :goto_dc

    .line 302
    :catchall_db
    move-exception p1

    :goto_dc
    nop

    .line 303
    aget p1, p4, v0

    if-lez p1, :cond_fd

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u2713 \u65b9\u6848\u5df2\u5e94\u7528\uff1a\u63cf\u8ff0\u5df2\u66f4\u65b0\uff0c\u65b0\u589e "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    aget p2, p4, v0

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u6761\u5b50\u4efb\u52a1"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_ff

    .line 305
    :cond_fd
    const-string p1, "\u2713 \u65b9\u6848\u5df2\u5e94\u7528\u5230\u63cf\u8ff0"

    .line 303
    :goto_ff
    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 306
    return-void
.end method

.method private static brief(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 391
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 393
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

    .line 394
    :catch_11
    move-exception v0

    .line 395
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

.method private static buildDoc(Lim/doit/pro/ai/AIAssistant$PlanResult;)Ljava/lang/String;
    .registers 6

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    const-string v1, "\u3010AI \u76ee\u6807\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_1e
    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    if-nez v1, :cond_25

    const-string v1, ""

    goto :goto_27

    :cond_25
    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 313
    const-string v1, "\n\n\u3010AI \u884c\u52a8\u6e05\u5355\u3011\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    const/4 v1, 0x0

    :goto_38
    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7b

    .line 315
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v3, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 317
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_74

    const-string v3, "\uff08\u7ea6"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\uff09"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_74
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    move v1, v2

    goto :goto_38

    .line 321
    :cond_7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static chat(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 327
    const-string v0, "UTF-8"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 328
    const-string v2, "model"

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 330
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 331
    const-string v4, "system"

    const-string v5, "role"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v4, "content"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 334
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 335
    const-string v3, "user"

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 336
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 337
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 338
    const-string p1, "messages"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    const-string p1, "temperature"

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 341
    nop

    .line 343
    const/4 p1, 0x0

    :try_start_4a
    new-instance p2, Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->endpoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "/+$"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/chat/completions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p2

    check-cast p2, Ljava/net/HttpURLConnection;
    :try_end_74
    .catchall {:try_start_4a .. :try_end_74} :catchall_16e

    .line 344
    const/16 p1, 0x3a98

    :try_start_76
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 345
    const p1, 0x1d4c0

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 346
    const-string p1, "POST"

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 347
    const-string p1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    const-string p0, "Content-Type"

    const-string p1, "application/json"

    invoke-virtual {p2, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    const-string p0, "User-Agent"

    const-string p1, "DoitLocalAI/1.0"

    invoke-virtual {p2, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 351
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_b6
    .catchall {:try_start_76 .. :try_end_b6} :catchall_16b

    .line 352
    :try_start_b6
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_c1
    .catchall {:try_start_b6 .. :try_end_c1} :catchall_166

    :try_start_c1
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    .line 353
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 354
    const/16 p1, 0x190

    if-lt p0, p1, :cond_d1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_d5

    :cond_d1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 355
    :goto_d5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 356
    const/4 v2, 0x0

    if-eqz p1, :cond_ee

    .line 357
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 359
    :goto_e1
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_eb

    invoke-virtual {v1, v3, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e1

    .line 360
    :cond_eb
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 362
    :cond_ee
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 363
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_13f

    .line 364
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 365
    const-string v0, "choices"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 366
    if-eqz p0, :cond_122

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_122

    .line 367
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "message"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11c
    .catchall {:try_start_c1 .. :try_end_11c} :catchall_16b

    .line 369
    if-eqz p2, :cond_121

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 367
    :cond_121
    return-object p0

    .line 366
    :cond_122
    :try_start_122
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

    .line 363
    :cond_13f
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

    .line 352
    :catchall_166
    move-exception p1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_16b
    .catchall {:try_start_122 .. :try_end_16b} :catchall_16b

    .line 369
    :catchall_16b
    move-exception p0

    move-object p1, p2

    goto :goto_16f

    :catchall_16e
    move-exception p0

    :goto_16f
    if-eqz p1, :cond_174

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 370
    :cond_174
    goto :goto_176

    :goto_175
    throw p0

    :goto_176
    goto :goto_175
.end method

.method private static confirm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;)V
    .registers 14

    .line 446
    const-string v1, "dialog_ghs_confirm"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v8}, Lim/doit/pro/ai/AIAssistant;->appDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 447
    return-void
.end method

.method public static endpoint(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 57
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "endpoint"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "https://token.sensenova.cn/v1"

    :cond_14
    return-object p0
.end method

.method private static extractJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 375
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 376
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 377
    const-string v1, "```"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 378
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 379
    if-lez v2, :cond_1e

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 380
    :cond_1e
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 381
    if-ltz v1, :cond_29

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 382
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 384
    :cond_2d
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 385
    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 386
    if-ltz v1, :cond_44

    if-le v2, v1, :cond_44

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 387
    :cond_44
    return-object v0
.end method

.method private static findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .line 91
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 92
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    .line 95
    :cond_18
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 96
    check-cast p0, Landroid/view/ViewGroup;

    .line 97
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_30

    return-object v1

    .line 97
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 102
    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private static generate(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Z)V
    .registers 5

    .line 149
    if-eqz p3, :cond_5

    const-string p3, "\u6b63\u5728\u91cd\u65b0\u751f\u6210\u2026"

    goto :goto_7

    :cond_5
    const-string p3, "AI \u6b63\u5728\u751f\u6210\u884c\u52a8\u65b9\u6848\u2026"

    :goto_7
    invoke-static {p0, p3}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 150
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lim/doit/pro/ai/AIAssistant$4;

    invoke-direct {v0, p0, p2, p1}, Lim/doit/pro/ai/AIAssistant$4;-><init>(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/activity/TaskDetailFragment;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 167
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 168
    return-void
.end method

.method private static getTask(Ljava/lang/Object;)Lim/doit/pro/model/Task;
    .registers 3

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTask"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 123
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 124
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lim/doit/pro/model/Task;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p0

    .line 125
    :catchall_15
    move-exception p0

    .line 126
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .registers 1

    .line 401
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

    .line 62
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "key"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static model(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 66
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "model"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "sensenova-6.7-flash-lite"

    :cond_14
    return-object p0
.end method

.method private static onPlanClick(Lim/doit/pro/activity/TaskDetailFragment;)V
    .registers 5

    .line 131
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    if-nez v0, :cond_7

    return-void

    .line 133
    :cond_7
    invoke-static {v0}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_25

    .line 134
    const-string p0, "\u8bf7\u5148\u5728 \u8bbe\u7f6e \u2192 AI \u52a9\u7406 \u91cc\u914d\u7f6e API Key"

    invoke-static {v0, p0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v1, "im.doit.pro.ai.AISettingsActivity"

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void

    .line 138
    :cond_25
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->getTask(Ljava/lang/Object;)Lim/doit/pro/model/Task;

    move-result-object v1

    .line 139
    if-nez v1, :cond_31

    const-string p0, "\u4efb\u52a1\u672a\u52a0\u8f7d"

    invoke-static {v0, p0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 140
    :cond_31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5c06\u6839\u636e\u4efb\u52a1\u300c"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 141
    invoke-virtual {v1}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u300d\u751f\u6210\u884c\u52a8\u65b9\u6848\u3002\n\u4efb\u52a1\u6807\u9898\u4e0e\u63cf\u8ff0\u4f1a\u53d1\u9001\u7ed9\u4f60\u914d\u7f6e\u7684 AI \u670d\u52a1\u5546\u3002\u7ee7\u7eed\uff1f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lim/doit/pro/ai/AIAssistant$3;

    invoke-direct {v3, v0, p0, v1}, Lim/doit/pro/ai/AIAssistant$3;-><init>(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;)V

    .line 140
    const-string p0, "AI \u884c\u52a8\u65b9\u6848"

    const-string v1, "\u751f\u6210"

    invoke-static {v0, p0, v2, v1, v3}, Lim/doit/pro/ai/AIAssistant;->confirm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;)V

    .line 146
    return-void
.end method

.method public static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 53
    const-string v0, "doit_ai_assist"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static requestPlan(Landroid/app/Activity;Lim/doit/pro/model/Task;)Lim/doit/pro/ai/AIAssistant$PlanResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    const-string v0, ""

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4eca\u5929\u7684\u65e5\u671f\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd EEEE"

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u4efb\u52a1\u6807\u9898\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 190
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ai/AIAssistant;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\u5df2\u6709\u63cf\u8ff0\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lim/doit/pro/ai/AIAssistant;->isBlank(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    const-string p1, "\u65e0"

    goto :goto_4c

    :cond_48
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object p1

    :goto_4c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\n\u8bf7\u751f\u6210\u884c\u52a8\u65b9\u6848 JSON\u3002"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 194
    const-string v1, "\u4f60\u662f\u4e00\u4f4d\u8d44\u6df1\u7684 GTD \u4e2a\u4eba\u7ba1\u7406\u6559\u7ec3\u548c\u9879\u76ee\u89c4\u5212\u4e13\u5bb6\u3002\u7528\u6237\u4f1a\u7ed9\u4f60\u4e00\u4e2a\u4efb\u52a1\uff0c\u8bf7\u751f\u6210\u4e00\u4efd\u52a1\u5b9e\u3001\u53ef\u6267\u884c\u7684\u884c\u52a8\u65b9\u6848\u3002\u8981\u6c42\uff1a1) summary \u7528\u4e00\u53e5\u8bdd\u6f84\u6e05\u76ee\u6807\u4e0e\u5b8c\u6210\u6807\u51c6\uff1b2) plan \u7ed9\u51fa\u7cbe\u70bc\u7684\u65b9\u6848\u6587\u672c\uff0c\u5305\u542b\uff1a\u53ef\u884c\u6027\u8981\u70b9\u3001\u9636\u6bb5\u5212\u5206\u3001\u6bcf\u9636\u6bb5\u505a\u4ec0\u4e48\u3001\u5173\u952e\u98ce\u9669\u4e0e\u89c4\u907f\u5efa\u8bae\uff0c\u7528\u7b80\u77ed\u7684\u6bb5\u843d\u548c\u300c\u00b7\u300d\u5217\u8868\u6392\u7248\uff1b3) steps \u7ed9\u51fa 3~8 \u6761\u53ef\u76f4\u63a5\u6267\u884c\u7684\u4e0b\u4e00\u6b65\u884c\u52a8\uff0c\u6309\u6267\u884c\u987a\u5e8f\u6392\u5217\uff0c\u6bcf\u6761\u4ee5\u52a8\u8bcd\u5f00\u5934\u3001\u5177\u4f53\u660e\u786e\u3001\u5355\u6761\u53ef\u5728 2 \u5c0f\u65f6\u5185\u5b8c\u6210\uff1b4) \u5982\u679c\u4efb\u52a1\u672c\u8eab\u5f88\u5c0f\uff0csteps \u53ea\u7ed9 1~3 \u6761\uff0c\u4e0d\u8981\u8fc7\u5ea6\u62c6\u89e3\uff1b5) \u5168\u90e8\u4f7f\u7528\u7b80\u4f53\u4e2d\u6587\uff1b6) \u4e25\u683c\u53ea\u8f93\u51fa\u4e00\u4e2a JSON \u5bf9\u8c61\uff0c\u7981\u6b62\u8f93\u51fa\u4efb\u4f55\u89e3\u91ca\u3001markdown \u6216\u4ee3\u7801\u5757\u6807\u8bb0\u3002JSON \u683c\u5f0f\uff1a{\"summary\":\"...\",\"plan\":\"...\",\"steps\":[{\"title\":\"...\",\"estimate\":\"...\"}]}"

    invoke-static {p0, v1, p1}, Lim/doit/pro/ai/AIAssistant;->chat(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 195
    new-instance p1, Lim/doit/pro/ai/AIAssistant$PlanResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lim/doit/pro/ai/AIAssistant$PlanResult;-><init>(Lim/doit/pro/ai/AIAssistant$1;)V

    .line 196
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->extractJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    nop

    .line 198
    const/4 v2, 0x0

    if-eqz v1, :cond_d6

    .line 200
    :try_start_6e
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 201
    const-string v1, "summary"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    .line 202
    const-string v1, "plan"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    .line 203
    const-string v1, "steps"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 204
    if-eqz v1, :cond_c1

    .line 205
    const/4 v3, 0x0

    :goto_8c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_c1

    const/16 v4, 0xc

    if-ge v3, v4, :cond_c1

    .line 206
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 207
    if-nez v4, :cond_9d

    goto :goto_be

    .line 208
    :cond_9d
    const-string v5, "title"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 209
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_ae

    goto :goto_be

    .line 210
    :cond_ae
    iget-object v6, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v5, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    const-string v6, "estimate"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :goto_be
    add-int/lit8 v3, v3, 0x1

    goto :goto_8c

    .line 214
    :cond_c1
    iget-object v0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d1

    iget-object v0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_cf
    .catchall {:try_start_6e .. :try_end_cf} :catchall_d4

    if-lez v0, :cond_d3

    :cond_d1
    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 215
    :cond_d3
    :goto_d3
    goto :goto_d6

    :catchall_d4
    move-exception v0

    goto :goto_d3

    .line 217
    :cond_d6
    :goto_d6
    if-nez v2, :cond_e7

    .line 219
    const-string v0, "AI \u8fd4\u56de\u4e86\u975e\u7ed3\u6784\u5316\u6587\u672c\uff0c\u5df2\u4f5c\u4e3a\u65b9\u6848\u653e\u5165\u63cf\u8ff0\uff08\u672a\u751f\u6210\u5b50\u4efb\u52a1\uff09"

    iput-object v0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    .line 221
    iget-object p0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 223
    :cond_e7
    return-object p1
.end method

.method private static row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V
    .registers 13

    .line 507
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 508
    instance-of v1, v0, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v1, :cond_26

    .line 509
    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v7, Lim/doit/pro/ai/AIAssistant$14;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/ai/AIAssistant$14;-><init>(Ljava/lang/String;Landroid/app/Activity;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 520
    :cond_26
    return-void
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 399
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private static showPreview(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V
    .registers 16

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 228
    iget-object v1, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1e

    const-string v1, "\u3010\u76ee\u6807\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_1e
    iget-object v1, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    if-nez v1, :cond_25

    const-string v1, ""

    goto :goto_27

    :cond_25
    iget-object v1, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-object v1, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_7c

    .line 231
    const-string v1, "\n\n\u2500\u2500 \u5c06\u521b\u5efa\u7684\u5b50\u4efb\u52a1 \u2500\u2500\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    const/4 v1, 0x0

    :goto_39
    iget-object v3, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7c

    .line 233
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v4, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 235
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_75

    const-string v4, "\uff08\u7ea6"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\uff09"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    :cond_75
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    move v1, v3

    goto :goto_39

    .line 239
    :cond_7c
    new-instance v1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "style"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Theme.Doit.Light.Dialog"

    invoke-virtual {v3, v6, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-direct {v1, p0, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 240
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "layout"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "dialog_ai_plan"

    invoke-virtual {v4, v7, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ai_plan_text"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 242
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v4, "cancel_btn"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DButton;

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "ok_btn"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v7, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lim/doit/pro/ui/component/DButton;

    .line 245
    const-string v4, "\u5e94\u7528\u5230\u4efb\u52a1"

    invoke-virtual {v11, v4}, Lim/doit/pro/ui/component/DButton;->setText(Ljava/lang/CharSequence;)V

    .line 246
    const-string v4, "\u5173\u95ed"

    invoke-virtual {v0, v4}, Lim/doit/pro/ui/component/DButton;->setText(Ljava/lang/CharSequence;)V

    .line 247
    filled-new-array {v2}, [I

    move-result-object v10

    .line 248
    new-instance v2, Lim/doit/pro/ai/AIAssistant$5;

    invoke-direct {v2, v1}, Lim/doit/pro/ai/AIAssistant$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    new-instance v0, Lim/doit/pro/ai/AIAssistant$6;

    move-object v4, v0

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v10}, Lim/doit/pro/ai/AIAssistant$6;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V

    invoke-virtual {v11, v0}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 260
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 261
    if-eqz p1, :cond_137

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double p2, p2

    const-wide v2, 0x3fe6666666666666L    # 0.7

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v2

    double-to-int p2, p2

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/view/Window;->setLayout(II)V

    .line 263
    :cond_137
    :try_start_137
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V
    :try_end_13a
    .catchall {:try_start_137 .. :try_end_13a} :catchall_13b

    .line 266
    goto :goto_141

    .line 264
    :catchall_13b
    move-exception p1

    .line 265
    const-string p1, "\u65b9\u6848\u5df2\u751f\u6210\uff0c\u4f46\u9875\u9762\u5df2\u5173\u95ed\uff0c\u8bf7\u91cd\u65b0\u70b9\u51fb AI \u884c\u52a8\u65b9\u6848\u67e5\u770b"

    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 267
    :goto_141
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 404
    sget-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    new-instance v1, Lim/doit/pro/ai/AIAssistant$7;

    invoke-direct {v1, p0, p1}, Lim/doit/pro/ai/AIAssistant$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method public static wire(Landroid/app/Activity;)V
    .registers 3

    .line 74
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "AI \u52a9\u7406"

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 75
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "AI Assistant"

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 76
    :cond_1e
    if-eqz v0, :cond_30

    .line 77
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 78
    new-instance v1, Lim/doit/pro/ai/AIAssistant$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    goto :goto_30

    .line 87
    :catchall_2f
    move-exception p0

    :cond_30
    :goto_30
    nop

    .line 88
    return-void
.end method

.method public static wireDetail(Lim/doit/pro/activity/TaskDetailFragment;)V
    .registers 5

    .line 109
    :try_start_0
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ai_plan_btn"

    const-string v2, "id"

    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 110
    invoke-virtual {p0}, Lim/doit/pro/activity/TaskDetailFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_2c

    .line 112
    new-instance v1, Lim/doit/pro/ai/AIAssistant$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$2;-><init>(Lim/doit/pro/activity/TaskDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2a
    .catchall {:try_start_0 .. :try_end_2a} :catchall_2b

    goto :goto_2c

    .line 117
    :catchall_2b
    move-exception p0

    :cond_2c
    :goto_2c
    nop

    .line 118
    return-void
.end method

.method public static wireSettings(Landroid/app/Activity;)V
    .registers 6

    .line 452
    new-instance v0, Lim/doit/pro/ai/AIAssistant$10;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$10;-><init>(Landroid/app/Activity;)V

    .line 459
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->endpoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 452
    const-string v2, "ai_endpoint"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v1, v3}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 460
    new-instance v0, Lim/doit/pro/ai/AIAssistant$11;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$11;-><init>(Landroid/app/Activity;)V

    .line 467
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 460
    const-string v2, "ai_key"

    const/4 v4, 0x1

    invoke-static {p0, v2, v0, v1, v4}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 468
    new-instance v0, Lim/doit/pro/ai/AIAssistant$12;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$12;-><init>(Landroid/app/Activity;)V

    .line 475
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 468
    const-string v2, "ai_model"

    invoke-static {p0, v2, v0, v1, v3}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 476
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

    .line 477
    instance-of v1, v0, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v1, :cond_4e

    .line 478
    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v1, Lim/doit/pro/ai/AIAssistant$13;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$13;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 504
    :cond_4e
    return-void
.end method
