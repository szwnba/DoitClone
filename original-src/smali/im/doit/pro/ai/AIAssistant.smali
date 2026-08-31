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
.field public static final BUILTIN_PROMPT_BODY:Ljava/lang/String; = "\u4f60\u662f\u4e00\u4f4d\u8d44\u6df1\u7684 GTD \u4e2a\u4eba\u7ba1\u7406\u6559\u7ec3\u548c\u9879\u76ee\u89c4\u5212\u4e13\u5bb6\u3002\u7528\u6237\u4f1a\u7ed9\u4f60\u4e00\u4e2a\u4efb\u52a1\uff0c\u8bf7\u751f\u6210\u4e00\u4efd\u52a1\u5b9e\u3001\u53ef\u6267\u884c\u7684\u884c\u52a8\u65b9\u6848\u3002\u8981\u6c42\uff1a1) summary \u7528\u4e00\u53e5\u8bdd\u6f84\u6e05\u76ee\u6807\u4e0e\u5b8c\u6210\u6807\u51c6\uff1b2) plan \u7ed9\u51fa\u7cbe\u70bc\u7684\u65b9\u6848\u6587\u672c\uff0c\u5305\u542b\uff1a\u53ef\u884c\u6027\u8981\u70b9\u3001\u9636\u6bb5\u5212\u5206\u3001\u6bcf\u9636\u6bb5\u505a\u4ec0\u4e48\u3001\u5173\u952e\u98ce\u9669\u4e0e\u89c4\u907f\u5efa\u8bae\uff0c\u7528\u7b80\u77ed\u7684\u6bb5\u843d\u548c\u300c\u00b7\u300d\u5217\u8868\u6392\u7248\uff1b3) steps \u7ed9\u51fa 3~8 \u6761\u53ef\u76f4\u63a5\u6267\u884c\u7684\u4e0b\u4e00\u6b65\u884c\u52a8\uff0c\u6309\u6267\u884c\u987a\u5e8f\u6392\u5217\uff0c\u6bcf\u6761\u4ee5\u52a8\u8bcd\u5f00\u5934\u3001\u5177\u4f53\u660e\u786e\u3001\u5355\u6761\u53ef\u5728 2 \u5c0f\u65f6\u5185\u5b8c\u6210\uff1b4) \u5982\u679c\u4efb\u52a1\u672c\u8eab\u5f88\u5c0f\uff0csteps \u53ea\u7ed9 1~3 \u6761\uff0c\u4e0d\u8981\u8fc7\u5ea6\u62c6\u89e3\uff1b5) \u5168\u90e8\u4f7f\u7528\u7b80\u4f53\u4e2d\u6587\uff1b6) \u4e25\u683c\u53ea\u8f93\u51fa\u4e00\u4e2a JSON \u5bf9\u8c61\uff0c\u7981\u6b62\u8f93\u51fa\u4efb\u4f55\u89e3\u91ca\u3001markdown \u6216\u4ee3\u7801\u5757\u6807\u8bb0\u3002JSON \u683c\u5f0f\uff1a{\"summary\":\"...\",\"plan\":\"...\",\"steps\":[{\"title\":\"...\",\"estimate\":\"...\"}]}"

.field public static final BUILTIN_PROMPT_ID:I = 0x0

.field public static final BUILTIN_PROMPT_NAME:Ljava/lang/String; = "GTD \u6559\u7ec3 \u00b7 \u5185\u7f6e"

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

    .line 49
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/activity/TaskDetailFragment;Landroid/app/Activity;)V
    .registers 2

    .line 39
    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->onPlanClick(Lim/doit/pro/activity/TaskDetailFragment;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Z)V
    .registers 4

    .line 39
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

    .line 39
    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->requestPlan(Landroid/app/Activity;Lim/doit/pro/model/Task;)Lim/doit/pro/ai/AIAssistant$PlanResult;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V
    .registers 4

    .line 39
    invoke-static {p0, p1, p2, p3}, Lim/doit/pro/ai/AIAssistant;->showPreview(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .line 39
    sget-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V
    .registers 5

    .line 39
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

    .line 39
    invoke-static {p0, p1, p2}, Lim/doit/pro/ai/AIAssistant;->chat(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;
    .registers 9

    .line 39
    invoke-static/range {p0 .. p8}, Lim/doit/pro/ai/AIAssistant;->appDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method private static appDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;ZLjava/lang/String;Z)Landroid/app/Dialog;
    .registers 13

    .line 555
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

    .line 556
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

    .line 557
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

    .line 558
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

    .line 559
    if-eqz p2, :cond_60

    if-eqz p3, :cond_60

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
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

    .line 561
    if-eqz p2, :cond_8b

    .line 562
    if-eqz p8, :cond_7d

    const/16 p3, 0x81

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setInputType(I)V

    .line 563
    :cond_7d
    invoke-virtual {p2, p7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 564
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-interface {p3}, Landroid/text/Editable;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 566
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

    .line 567
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

    .line 568
    if-eqz p4, :cond_b8

    invoke-virtual {p0, p4}, Lim/doit/pro/ui/component/DButton;->setText(Ljava/lang/CharSequence;)V

    .line 569
    :cond_b8
    new-instance p4, Lim/doit/pro/ai/AIAssistant$8;

    invoke-direct {p4, p6}, Lim/doit/pro/ai/AIAssistant$8;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p3, p4}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 573
    new-instance p3, Lim/doit/pro/ai/AIAssistant$9;

    invoke-direct {p3, p6, p5, p2}, Lim/doit/pro/ai/AIAssistant$9;-><init>(Landroid/app/Dialog;Lim/doit/pro/ai/AIAssistant$OnOk;Landroid/widget/EditText;)V

    invoke-virtual {p0, p3}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 580
    invoke-virtual {p6, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 581
    return-object p6
.end method

.method private static apply(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V
    .registers 5

    .line 402
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lim/doit/pro/ai/AIAssistant;->applyInner(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    .line 405
    goto :goto_1b

    .line 403
    :catchall_4
    move-exception p1

    .line 404
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u5e94\u7528\u65b9\u6848\u65f6\u51fa\u9519: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 406
    :goto_1b
    return-void
.end method

.method private static applyInner(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V
    .registers 12

    .line 411
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

    .line 412
    invoke-static {p3}, Lim/doit/pro/ai/AIAssistant;->buildDoc(Lim/doit/pro/ai/AIAssistant$PlanResult;)Ljava/lang/String;

    move-result-object v1

    .line 413
    instance-of v2, v0, Landroid/widget/TextView;

    if-eqz v2, :cond_26

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_29

    .line 414
    :cond_26
    invoke-virtual {p2, v1}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 417
    :goto_29
    goto :goto_34

    .line 415
    :catchall_2a
    move-exception v0

    .line 416
    :try_start_2b
    invoke-static {p3}, Lim/doit/pro/ai/AIAssistant;->buildDoc(Lim/doit/pro/ai/AIAssistant$PlanResult;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lim/doit/pro/model/Task;->setNotes(Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_33

    goto :goto_34

    :catchall_33
    move-exception v0

    .line 419
    :goto_34
    const/4 v0, 0x0

    aput v0, p4, v0

    .line 421
    const/4 v1, 0x0

    :goto_38
    const/4 v2, 0x1

    :try_start_39
    iget-object v3, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_aa

    .line 422
    new-instance v3, Lim/doit/pro/model/SubTask;

    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getUuid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getRepeatNo()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lim/doit/pro/model/SubTask;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lim/doit/pro/model/SubTask;->setUuid(Ljava/lang/String;)V

    .line 424
    iget-object v4, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 425
    iget-object v5, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 426
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

    .line 427
    :cond_8c
    invoke-virtual {v3, v4}, Lim/doit/pro/model/SubTask;->setTitle(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v3}, Lim/doit/pro/model/SubTask;->initPos()V

    .line 429
    invoke-virtual {p2}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 430
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->persist()Lim/doit/pro/db/Persist;

    move-result-object v4

    iget-object v4, v4, Lim/doit/pro/db/Persist;->subTaskDao:Lim/doit/pro/db/persist/SubTaskDao;

    invoke-virtual {v4, v3}, Lim/doit/pro/db/persist/SubTaskDao;->createAndSaveLog(Lim/doit/pro/model/SubTask;)V

    .line 431
    aget v3, p4, v0

    add-int/2addr v3, v2

    aput v3, p4, v0
    :try_end_a7
    .catchall {:try_start_39 .. :try_end_a7} :catchall_ab

    .line 421
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 435
    :cond_aa
    goto :goto_c6

    .line 433
    :catchall_ab
    move-exception p2

    .line 434
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

    .line 438
    :goto_c6
    :try_start_c6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    const-string p3, "setSubtaskViewContent"

    new-array v1, v0, [Ljava/lang/Class;

    invoke-virtual {p2, p3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 439
    invoke-virtual {p2, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 440
    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_da
    .catchall {:try_start_c6 .. :try_end_da} :catchall_db

    goto :goto_dc

    .line 441
    :catchall_db
    move-exception p1

    :goto_dc
    nop

    .line 442
    aget p1, p4, v0

    if-lez p1, :cond_fd

    .line 443
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

    .line 444
    :cond_fd
    const-string p1, "\u2713 \u65b9\u6848\u5df2\u5e94\u7528\u5230\u63cf\u8ff0"

    .line 442
    :goto_ff
    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 445
    return-void
.end method

.method private static brief(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 530
    const-string v0, ""

    if-nez p0, :cond_5

    return-object v0

    .line 532
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

    .line 533
    :catch_11
    move-exception v0

    .line 534
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

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 449
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

    .line 450
    :cond_1e
    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    if-nez v1, :cond_25

    const-string v1, ""

    goto :goto_27

    :cond_25
    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    iget-object v1, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7b

    .line 452
    const-string v1, "\n\n\u3010AI \u884c\u52a8\u6e05\u5355\u3011\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    const/4 v1, 0x0

    :goto_38
    iget-object v2, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7b

    .line 454
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

    .line 455
    iget-object v3, p0, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 456
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

    .line 457
    :cond_74
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    move v1, v2

    goto :goto_38

    .line 460
    :cond_7b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static buildSystem(Landroid/content/Context;Lim/doit/pro/model/Task;)Ljava/lang/String;
    .registers 8

    .line 304
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->currentPromptId(Landroid/content/Context;)I

    move-result v0

    .line 305
    nop

    .line 306
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->promptsJson(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    .line 307
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v3, "\u4f60\u662f\u4e00\u4f4d\u8d44\u6df1\u7684 GTD \u4e2a\u4eba\u7ba1\u7406\u6559\u7ec3\u548c\u9879\u76ee\u89c4\u5212\u4e13\u5bb6\u3002\u7528\u6237\u4f1a\u7ed9\u4f60\u4e00\u4e2a\u4efb\u52a1\uff0c\u8bf7\u751f\u6210\u4e00\u4efd\u52a1\u5b9e\u3001\u53ef\u6267\u884c\u7684\u884c\u52a8\u65b9\u6848\u3002\u8981\u6c42\uff1a1) summary \u7528\u4e00\u53e5\u8bdd\u6f84\u6e05\u76ee\u6807\u4e0e\u5b8c\u6210\u6807\u51c6\uff1b2) plan \u7ed9\u51fa\u7cbe\u70bc\u7684\u65b9\u6848\u6587\u672c\uff0c\u5305\u542b\uff1a\u53ef\u884c\u6027\u8981\u70b9\u3001\u9636\u6bb5\u5212\u5206\u3001\u6bcf\u9636\u6bb5\u505a\u4ec0\u4e48\u3001\u5173\u952e\u98ce\u9669\u4e0e\u89c4\u907f\u5efa\u8bae\uff0c\u7528\u7b80\u77ed\u7684\u6bb5\u843d\u548c\u300c\u00b7\u300d\u5217\u8868\u6392\u7248\uff1b3) steps \u7ed9\u51fa 3~8 \u6761\u53ef\u76f4\u63a5\u6267\u884c\u7684\u4e0b\u4e00\u6b65\u884c\u52a8\uff0c\u6309\u6267\u884c\u987a\u5e8f\u6392\u5217\uff0c\u6bcf\u6761\u4ee5\u52a8\u8bcd\u5f00\u5934\u3001\u5177\u4f53\u660e\u786e\u3001\u5355\u6761\u53ef\u5728 2 \u5c0f\u65f6\u5185\u5b8c\u6210\uff1b4) \u5982\u679c\u4efb\u52a1\u672c\u8eab\u5f88\u5c0f\uff0csteps \u53ea\u7ed9 1~3 \u6761\uff0c\u4e0d\u8981\u8fc7\u5ea6\u62c6\u89e3\uff1b5) \u5168\u90e8\u4f7f\u7528\u7b80\u4f53\u4e2d\u6587\uff1b6) \u4e25\u683c\u53ea\u8f93\u51fa\u4e00\u4e2a JSON \u5bf9\u8c61\uff0c\u7981\u6b62\u8f93\u51fa\u4efb\u4f55\u89e3\u91ca\u3001markdown \u6216\u4ee3\u7801\u5757\u6807\u8bb0\u3002JSON \u683c\u5f0f\uff1a{\"summary\":\"...\",\"plan\":\"...\",\"steps\":[{\"title\":\"...\",\"estimate\":\"...\"}]}"

    if-ge v1, v2, :cond_2b

    .line 308
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 309
    if-eqz v2, :cond_28

    const-string v4, "id"

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_28

    const-string p0, "body"

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    .line 307
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 311
    :cond_2b
    :goto_2b
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 312
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd EEEE"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ai/AIAssistant;->isBlank(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    const-string p1, "\u65e0"

    goto :goto_5a

    :cond_56
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object p1

    .line 314
    :goto_5a
    const-string v1, "{\u6807\u9898}"

    invoke-virtual {v3, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "{\u65e5\u671f}"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "{\u63cf\u8ff0}"

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 315
    return-object p0
.end method

.method private static chat(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 466
    const-string v0, "UTF-8"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 467
    const-string v2, "model"

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 468
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 469
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 470
    const-string v4, "system"

    const-string v5, "role"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 471
    const-string v4, "content"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 472
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 473
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 474
    const-string v3, "user"

    invoke-virtual {p1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 475
    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 476
    invoke-virtual {v2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 477
    const-string p1, "messages"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 478
    const-string p1, "temperature"

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-virtual {v1, p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 480
    nop

    .line 482
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

    .line 483
    const/16 p1, 0x3a98

    :try_start_76
    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 484
    const p1, 0x1d4c0

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 485
    const-string p1, "POST"

    invoke-virtual {p2, p1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 486
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

    .line 487
    const-string p0, "Content-Type"

    const-string p1, "application/json"

    invoke-virtual {p2, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-string p0, "User-Agent"

    const-string p1, "DoitLocalAI/1.0"

    invoke-virtual {p2, p0, p1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 490
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0
    :try_end_b6
    .catchall {:try_start_76 .. :try_end_b6} :catchall_16b

    .line 491
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

    .line 492
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    .line 493
    const/16 p1, 0x190

    if-lt p0, p1, :cond_d1

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object p1

    goto :goto_d5

    :cond_d1
    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .line 494
    :goto_d5
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 495
    const/4 v2, 0x0

    if-eqz p1, :cond_ee

    .line 496
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 498
    :goto_e1
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_eb

    invoke-virtual {v1, v3, v2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_e1

    .line 499
    :cond_eb
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 501
    :cond_ee
    new-instance p1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {p1, v1, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 502
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_13f

    .line 503
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 504
    const-string v0, "choices"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 505
    if-eqz p0, :cond_122

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_122

    .line 506
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string p1, "message"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_11c
    .catchall {:try_start_c1 .. :try_end_11c} :catchall_16b

    .line 508
    if-eqz p2, :cond_121

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 506
    :cond_121
    return-object p0

    .line 505
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

    .line 502
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

    .line 491
    :catchall_166
    move-exception p1

    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V

    throw p1
    :try_end_16b
    .catchall {:try_start_122 .. :try_end_16b} :catchall_16b

    .line 508
    :catchall_16b
    move-exception p0

    move-object p1, p2

    goto :goto_16f

    :catchall_16e
    move-exception p0

    :goto_16f
    if-eqz p1, :cond_174

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 509
    :cond_174
    goto :goto_176

    :goto_175
    throw p0

    :goto_176
    goto :goto_175
.end method

.method private static confirm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;)V
    .registers 14

    .line 585
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

    .line 586
    return-void
.end method

.method public static currentPromptId(Landroid/content/Context;)I
    .registers 3

    .line 246
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "cur_prompt"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static currentPromptName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    .line 254
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->currentPromptId(Landroid/content/Context;)I

    move-result v0

    .line 255
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->promptsJson(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    .line 256
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 257
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 258
    if-eqz v2, :cond_27

    const-string v3, "id"

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_27

    const-string p0, "name"

    const-string v0, ""

    invoke-virtual {v2, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 256
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 260
    :cond_2a
    const-string p0, "GTD \u6559\u7ec3 \u00b7 \u5185\u7f6e"

    return-object p0
.end method

.method public static deletePrompt(Landroid/content/Context;I)V
    .registers 9

    .line 290
    if-nez p1, :cond_3

    return-void

    .line 291
    :cond_3
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->promptsJson(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 292
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 293
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2a

    .line 294
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 295
    if-eqz v4, :cond_27

    const-string v5, "id"

    const/4 v6, -0x1

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, p1, :cond_24

    goto :goto_27

    .line 296
    :cond_24
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 293
    :cond_27
    :goto_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 298
    :cond_2a
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "prompts"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->currentPromptId(Landroid/content/Context;)I

    move-result v0

    if-ne v0, p1, :cond_48

    invoke-static {p0, v2}, Lim/doit/pro/ai/AIAssistant;->setCurrentPromptId(Landroid/content/Context;I)V

    .line 300
    :cond_48
    return-void
.end method

.method public static endpoint(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 58
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "endpoint"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 59
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "https://token.sensenova.cn/v1"

    :cond_14
    return-object p0
.end method

.method private static extractJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 514
    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 515
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 516
    const-string v1, "```"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 517
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 518
    if-lez v2, :cond_1e

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 519
    :cond_1e
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 520
    if-ltz v1, :cond_29

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 521
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 523
    :cond_2d
    const/16 v1, 0x7b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 524
    const/16 v2, 0x7d

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 525
    if-ltz v1, :cond_44

    if-le v2, v1, :cond_44

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 526
    :cond_44
    return-object v0
.end method

.method private static findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 4

    .line 92
    instance-of v0, p0, Landroid/widget/TextView;

    if-eqz v0, :cond_18

    .line 93
    move-object v0, p0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_18

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object p0

    .line 96
    :cond_18
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_33

    .line 97
    check-cast p0, Landroid/view/ViewGroup;

    .line 98
    const/4 v0, 0x0

    :goto_1f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_33

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, p1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_30

    return-object v1

    .line 98
    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 103
    :cond_33
    const/4 p0, 0x0

    return-object p0
.end method

.method private static generate(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Z)V
    .registers 5

    .line 185
    if-eqz p3, :cond_5

    const-string p3, "\u6b63\u5728\u91cd\u65b0\u751f\u6210\u2026"

    goto :goto_7

    :cond_5
    const-string p3, "AI \u6b63\u5728\u751f\u6210\u884c\u52a8\u65b9\u6848\u2026"

    :goto_7
    invoke-static {p0, p3}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lim/doit/pro/ai/AIAssistant$4;

    invoke-direct {v0, p0, p2, p1}, Lim/doit/pro/ai/AIAssistant$4;-><init>(Landroid/app/Activity;Lim/doit/pro/model/Task;Lim/doit/pro/activity/TaskDetailFragment;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method private static getTask(Ljava/lang/Object;)Lim/doit/pro/model/Task;
    .registers 3

    .line 134
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mTask"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 135
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lim/doit/pro/model/Task;
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    return-object p0

    .line 137
    :catchall_15
    move-exception p0

    .line 138
    const/4 p0, 0x0

    return-object p0
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .registers 1

    .line 540
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

.method private static isCreateMode(Ljava/lang/Object;)Z
    .registers 3

    .line 144
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mIsCreate"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 145
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 146
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result p0
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_13

    return p0

    .line 147
    :catchall_13
    move-exception p0

    .line 148
    const/4 p0, 0x0

    return p0
.end method

.method public static key(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 63
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

    .line 67
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "model"

    const-string v1, ""

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    const-string p0, "sensenova-6.7-flash-lite"

    :cond_14
    return-object p0
.end method

.method private static onPlanClick(Lim/doit/pro/activity/TaskDetailFragment;Landroid/app/Activity;)V
    .registers 7

    .line 153
    if-nez p1, :cond_3

    return-void

    .line 154
    :cond_3
    invoke-static {p1}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_21

    .line 155
    const-string p0, "\u8bf7\u5148\u5728 \u8bbe\u7f6e \u2192 AI \u52a9\u7406 \u91cc\u914d\u7f6e API Key"

    invoke-static {p1, p0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string v0, "im.doit.pro.ai.AISettingsActivity"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void

    .line 159
    :cond_21
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->isCreateMode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 160
    const-string p0, "\u8bf7\u5148\u4fdd\u5b58\u4efb\u52a1\uff0c\u518d\u751f\u6210 AI \u65b9\u6848"

    invoke-static {p1, p0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 161
    return-void

    .line 163
    :cond_2d
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->getTask(Ljava/lang/Object;)Lim/doit/pro/model/Task;

    move-result-object v0

    .line 164
    if-nez v0, :cond_39

    const-string p0, "\u4efb\u52a1\u672a\u52a0\u8f7d"

    invoke-static {p1, p0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 165
    :cond_39
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lim/doit/pro/ai/AIAssistant;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_51

    const-string p0, "\u8bf7\u5148\u586b\u5199\u4efb\u52a1\u6807\u9898"

    invoke-static {p1, p0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 169
    :cond_51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    :try_start_56
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_5e

    const/4 v3, 0x0

    goto :goto_66

    :cond_5e
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getSubTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 172
    :goto_66
    if-lez v3, :cond_79

    const-string v4, "\n\u6ce8\u610f\uff1a\u4efb\u52a1\u5df2\u6709 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6761\u5b50\u4efb\u52a1\uff0c\u5e94\u7528\u540e\u4f1a\u8ffd\u52a0\u65b0\u7684\u5b50\u4efb\u52a1\u3002"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_77
    .catchall {:try_start_56 .. :try_end_77} :catchall_78

    goto :goto_79

    .line 173
    :catchall_78
    move-exception v3

    :cond_79
    :goto_79
    nop

    .line 174
    invoke-virtual {v0}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/ai/AIAssistant;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string v3, "\n\u6ce8\u610f\uff1a\u73b0\u6709\u63cf\u8ff0\u5c06\u88ab\u65b9\u6848\u6587\u672c\u66ff\u6362\uff08\u539f\u5185\u5bb9\u4f1a\u4f5c\u4e3a\u4e0a\u4e0b\u6587\u63d0\u4f9b\u7ed9 AI\uff09\u3002"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5c06\u6839\u636e\u4efb\u52a1\u300c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\u300d\u751f\u6210\u884c\u52a8\u65b9\u6848\u3002\n\u4efb\u52a1\u6807\u9898\u4e0e\u63cf\u8ff0\u4f1a\u53d1\u9001\u7ed9\u4f60\u914d\u7f6e\u7684 AI \u670d\u52a1\u5546\u3002"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n\u7ee7\u7eed\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lim/doit/pro/ai/AIAssistant$3;

    invoke-direct {v2, p1, p0, v0}, Lim/doit/pro/ai/AIAssistant$3;-><init>(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;)V

    const-string p0, "AI \u884c\u52a8\u65b9\u6848"

    const-string v0, "\u751f\u6210"

    invoke-static {p1, p0, v1, v0, v2}, Lim/doit/pro/ai/AIAssistant;->confirm(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;)V

    .line 182
    return-void
.end method

.method public static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .line 54
    const-string v0, "doit_ai_assist"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static promptsJson(Landroid/content/Context;)Lorg/json/JSONArray;
    .registers 6

    .line 231
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v1, "prompts"

    const-string v2, "[]"

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_12

    .line 234
    goto :goto_18

    .line 232
    :catchall_12
    move-exception p0

    .line 233
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 235
    :goto_18
    nop

    .line 236
    const/4 p0, 0x0

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const-string v3, "id"

    if-ge v1, v2, :cond_39

    .line 237
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_36

    const/4 v1, 0x1

    goto :goto_3a

    .line 236
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_39
    const/4 v1, 0x0

    .line 239
    :goto_3a
    if-nez v1, :cond_5a

    .line 240
    :try_start_3c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "name"

    const-string v2, "GTD \u6559\u7ec3 \u00b7 \u5185\u7f6e"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "body"

    const-string v2, "\u4f60\u662f\u4e00\u4f4d\u8d44\u6df1\u7684 GTD \u4e2a\u4eba\u7ba1\u7406\u6559\u7ec3\u548c\u9879\u76ee\u89c4\u5212\u4e13\u5bb6\u3002\u7528\u6237\u4f1a\u7ed9\u4f60\u4e00\u4e2a\u4efb\u52a1\uff0c\u8bf7\u751f\u6210\u4e00\u4efd\u52a1\u5b9e\u3001\u53ef\u6267\u884c\u7684\u884c\u52a8\u65b9\u6848\u3002\u8981\u6c42\uff1a1) summary \u7528\u4e00\u53e5\u8bdd\u6f84\u6e05\u76ee\u6807\u4e0e\u5b8c\u6210\u6807\u51c6\uff1b2) plan \u7ed9\u51fa\u7cbe\u70bc\u7684\u65b9\u6848\u6587\u672c\uff0c\u5305\u542b\uff1a\u53ef\u884c\u6027\u8981\u70b9\u3001\u9636\u6bb5\u5212\u5206\u3001\u6bcf\u9636\u6bb5\u505a\u4ec0\u4e48\u3001\u5173\u952e\u98ce\u9669\u4e0e\u89c4\u907f\u5efa\u8bae\uff0c\u7528\u7b80\u77ed\u7684\u6bb5\u843d\u548c\u300c\u00b7\u300d\u5217\u8868\u6392\u7248\uff1b3) steps \u7ed9\u51fa 3~8 \u6761\u53ef\u76f4\u63a5\u6267\u884c\u7684\u4e0b\u4e00\u6b65\u884c\u52a8\uff0c\u6309\u6267\u884c\u987a\u5e8f\u6392\u5217\uff0c\u6bcf\u6761\u4ee5\u52a8\u8bcd\u5f00\u5934\u3001\u5177\u4f53\u660e\u786e\u3001\u5355\u6761\u53ef\u5728 2 \u5c0f\u65f6\u5185\u5b8c\u6210\uff1b4) \u5982\u679c\u4efb\u52a1\u672c\u8eab\u5f88\u5c0f\uff0csteps \u53ea\u7ed9 1~3 \u6761\uff0c\u4e0d\u8981\u8fc7\u5ea6\u62c6\u89e3\uff1b5) \u5168\u90e8\u4f7f\u7528\u7b80\u4f53\u4e2d\u6587\uff1b6) \u4e25\u683c\u53ea\u8f93\u51fa\u4e00\u4e2a JSON \u5bf9\u8c61\uff0c\u7981\u6b62\u8f93\u51fa\u4efb\u4f55\u89e3\u91ca\u3001markdown \u6216\u4ee3\u7801\u5757\u6807\u8bb0\u3002JSON \u683c\u5f0f\uff1a{\"summary\":\"...\",\"plan\":\"...\",\"steps\":[{\"title\":\"...\",\"estimate\":\"...\"}]}"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_59

    goto :goto_5a

    :catchall_59
    move-exception p0

    .line 242
    :cond_5a
    :goto_5a
    return-object v0
.end method

.method private static requestPlan(Landroid/app/Activity;Lim/doit/pro/model/Task;)Lim/doit/pro/ai/AIAssistant$PlanResult;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 319
    const-string v0, ""

    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->buildSystem(Landroid/content/Context;Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4eca\u5929\u7684\u65e5\u671f\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd EEEE"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u4efb\u52a1\u6807\u9898\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 320
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/ai/AIAssistant;->safe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\u5df2\u6709\u63cf\u8ff0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 321
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lim/doit/pro/ai/AIAssistant;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string p1, "\u65e0"

    goto :goto_50

    :cond_4c
    invoke-virtual {p1}, Lim/doit/pro/model/Task;->getNotes()Ljava/lang/String;

    move-result-object p1

    :goto_50
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\n\u8bf7\u751f\u6210\u884c\u52a8\u65b9\u6848 JSON\u3002"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-static {p0, v1, p1}, Lim/doit/pro/ai/AIAssistant;->chat(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 325
    new-instance p1, Lim/doit/pro/ai/AIAssistant$PlanResult;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lim/doit/pro/ai/AIAssistant$PlanResult;-><init>(Lim/doit/pro/ai/AIAssistant$1;)V

    .line 326
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->extractJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 327
    nop

    .line 328
    const/4 v2, 0x0

    if-eqz v1, :cond_d8

    .line 330
    :try_start_70
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 331
    const-string v1, "summary"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    .line 332
    const-string v1, "plan"

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    .line 333
    const-string v1, "steps"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 334
    if-eqz v1, :cond_c3

    .line 335
    const/4 v3, 0x0

    :goto_8e
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_c3

    const/16 v4, 0xc

    if-ge v3, v4, :cond_c3

    .line 336
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 337
    if-nez v4, :cond_9f

    goto :goto_c0

    .line 338
    :cond_9f
    const-string v5, "title"

    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_b0

    goto :goto_c0

    .line 340
    :cond_b0
    iget-object v6, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    iget-object v5, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    const-string v6, "estimate"

    invoke-virtual {v4, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :goto_c0
    add-int/lit8 v3, v3, 0x1

    goto :goto_8e

    .line 344
    :cond_c3
    iget-object v0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_d3

    iget-object v0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_d1
    .catchall {:try_start_70 .. :try_end_d1} :catchall_d6

    if-lez v0, :cond_d5

    :cond_d3
    const/4 v0, 0x1

    const/4 v2, 0x1

    .line 345
    :cond_d5
    :goto_d5
    goto :goto_d8

    :catchall_d6
    move-exception v0

    goto :goto_d5

    .line 347
    :cond_d8
    :goto_d8
    if-nez v2, :cond_e9

    .line 349
    const-string v0, "AI \u8fd4\u56de\u4e86\u975e\u7ed3\u6784\u5316\u6587\u672c\uff0c\u5df2\u4f5c\u4e3a\u65b9\u6848\u653e\u5165\u63cf\u8ff0\uff08\u672a\u751f\u6210\u5b50\u4efb\u52a1\uff09"

    iput-object v0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    .line 351
    iget-object p0, p1, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 353
    :cond_e9
    return-object p1
.end method

.method private static row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V
    .registers 13

    .line 657
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 658
    instance-of v1, v0, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v1, :cond_26

    .line 659
    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v7, Lim/doit/pro/ai/AIAssistant$15;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lim/doit/pro/ai/AIAssistant$15;-><init>(Ljava/lang/String;Landroid/app/Activity;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    invoke-virtual {v0, v7}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 670
    :cond_26
    return-void
.end method

.method private static safe(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 538
    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method public static savePrompt(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)I
    .registers 11

    .line 265
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->promptsJson(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 266
    const-string v1, "body"

    const-string v2, "name"

    const-string v3, "id"

    const/4 v4, 0x0

    if-gez p1, :cond_40

    .line 267
    nop

    .line 268
    const/4 p1, 0x0

    const/4 v5, 0x0

    :goto_10
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge p1, v6, :cond_27

    .line 269
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 270
    if-eqz v6, :cond_24

    invoke-virtual {v6, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 268
    :cond_24
    add-int/lit8 p1, p1, 0x1

    goto :goto_10

    .line 272
    :cond_27
    add-int/lit8 p1, v5, 0x1

    .line 273
    :try_start_29
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3d
    .catchall {:try_start_29 .. :try_end_3d} :catchall_3e

    goto :goto_3f

    :catchall_3e
    move-exception p2

    .line 274
    :goto_3f
    goto :goto_62

    .line 275
    :cond_40
    nop

    :goto_41
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_62

    .line 276
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 277
    if-eqz v5, :cond_5f

    const/4 v6, -0x1

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, p1, :cond_5f

    .line 278
    if-eqz p1, :cond_62

    .line 279
    :try_start_56
    invoke-virtual {v5, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5c
    .catchall {:try_start_56 .. :try_end_5c} :catchall_5d

    goto :goto_62

    :catchall_5d
    move-exception p2

    goto :goto_62

    .line 275
    :cond_5f
    add-int/lit8 v4, v4, 0x1

    goto :goto_41

    .line 285
    :cond_62
    :goto_62
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string p2, "prompts"

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 286
    return p1
.end method

.method public static setCurrentPromptId(Landroid/content/Context;I)V
    .registers 3

    .line 250
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "cur_prompt"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 251
    return-void
.end method

.method private static showPreview(Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;)V
    .registers 16

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    const-string v1, "\u3014\u63d0\u793a\u8bcd\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->currentPromptName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3015\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v1, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_31

    const-string v1, "\u3010\u76ee\u6807\u3011"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_31
    iget-object v1, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    if-nez v1, :cond_38

    const-string v1, ""

    goto :goto_3a

    :cond_38
    iget-object v1, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->plan:Ljava/lang/String;

    :goto_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_8f

    .line 362
    const-string v1, "\n\n\u2500\u2500 \u5c06\u521b\u5efa\u7684\u5b50\u4efb\u52a1 \u2500\u2500\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const/4 v1, 0x0

    :goto_4c
    iget-object v3, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->steps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8f

    .line 364
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

    .line 365
    iget-object v4, p3, Lim/doit/pro/ai/AIAssistant$PlanResult;->estimates:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 366
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_88

    const-string v4, "\uff08\u7ea6"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\uff09"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_88
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    move v1, v3

    goto :goto_4c

    .line 370
    :cond_8f
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

    .line 371
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

    .line 372
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

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
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

    .line 375
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

    .line 376
    const-string v4, "\u5e94\u7528\u5230\u4efb\u52a1"

    invoke-virtual {v11, v4}, Lim/doit/pro/ui/component/DButton;->setText(Ljava/lang/CharSequence;)V

    .line 377
    const-string v4, "\u5173\u95ed"

    invoke-virtual {v0, v4}, Lim/doit/pro/ui/component/DButton;->setText(Ljava/lang/CharSequence;)V

    .line 378
    filled-new-array {v2}, [I

    move-result-object v10

    .line 379
    new-instance v2, Lim/doit/pro/ai/AIAssistant$5;

    invoke-direct {v2, v1}, Lim/doit/pro/ai/AIAssistant$5;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v0, v2}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    new-instance v0, Lim/doit/pro/ai/AIAssistant$6;

    move-object v4, v0

    move-object v5, v1

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v4 .. v10}, Lim/doit/pro/ai/AIAssistant$6;-><init>(Landroid/app/Dialog;Landroid/app/Activity;Lim/doit/pro/activity/TaskDetailFragment;Lim/doit/pro/model/Task;Lim/doit/pro/ai/AIAssistant$PlanResult;[I)V

    invoke-virtual {v11, v0}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 392
    :try_start_12a
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 393
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 394
    if-eqz p1, :cond_14d

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_13d
    .catchall {:try_start_12a .. :try_end_13d} :catchall_14e

    int-to-double p2, p2

    const-wide v0, 0x3fe6666666666666L    # 0.7

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p2, p2, v0

    double-to-int p2, p2

    const/4 p3, -0x1

    :try_start_14a
    invoke-virtual {p1, p3, p2}, Landroid/view/Window;->setLayout(II)V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14e

    .line 397
    :cond_14d
    goto :goto_154

    .line 395
    :catchall_14e
    move-exception p1

    .line 396
    const-string p1, "\u65b9\u6848\u5df2\u751f\u6210\uff0c\u4f46\u9875\u9762\u5df2\u5173\u95ed\uff0c\u8bf7\u91cd\u65b0\u70b9\u51fb AI \u884c\u52a8\u65b9\u6848\u67e5\u770b"

    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    :goto_154
    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 543
    sget-object v0, Lim/doit/pro/ai/AIAssistant;->MAIN:Landroid/os/Handler;

    new-instance v1, Lim/doit/pro/ai/AIAssistant$7;

    invoke-direct {v1, p0, p1}, Lim/doit/pro/ai/AIAssistant$7;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 547
    return-void
.end method

.method public static wire(Landroid/app/Activity;)V
    .registers 3

    .line 75
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "AI \u52a9\u7406"

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 76
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "AI Assistant"

    invoke-static {v0, v1}, Lim/doit/pro/ai/AIAssistant;->findByText(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 77
    :cond_1e
    if-eqz v0, :cond_30

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 79
    new-instance v1, Lim/doit/pro/ai/AIAssistant$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2e
    .catchall {:try_start_0 .. :try_end_2e} :catchall_2f

    goto :goto_30

    .line 88
    :catchall_2f
    move-exception p0

    :cond_30
    :goto_30
    nop

    .line 89
    return-void
.end method

.method public static wireDetail(Lim/doit/pro/activity/TaskDetailFragment;Landroid/view/View;)V
    .registers 7

    .line 114
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 115
    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ai_plan_btn"

    const-string v3, "id"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 116
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 117
    if-eqz p1, :cond_36

    if-eqz v0, :cond_36

    .line 118
    new-instance v1, Lim/doit/pro/ai/AIAssistant$2;

    invoke-direct {v1, p0, v0}, Lim/doit/pro/ai/AIAssistant$2;-><init>(Lim/doit/pro/activity/TaskDetailFragment;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_34
    .catchall {:try_start_0 .. :try_end_34} :catchall_35

    goto :goto_36

    .line 129
    :catchall_35
    move-exception p0

    :cond_36
    :goto_36
    nop

    .line 130
    return-void
.end method

.method public static wireSettings(Landroid/app/Activity;)V
    .registers 6

    .line 591
    new-instance v0, Lim/doit/pro/ai/AIAssistant$10;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$10;-><init>(Landroid/app/Activity;)V

    .line 598
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->endpoint(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 591
    const-string v2, "ai_endpoint"

    const/4 v3, 0x0

    invoke-static {p0, v2, v0, v1, v3}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 599
    new-instance v0, Lim/doit/pro/ai/AIAssistant$11;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$11;-><init>(Landroid/app/Activity;)V

    .line 606
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->key(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 599
    const-string v2, "ai_key"

    const/4 v4, 0x1

    invoke-static {p0, v2, v0, v1, v4}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 607
    new-instance v0, Lim/doit/pro/ai/AIAssistant$12;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIAssistant$12;-><init>(Landroid/app/Activity;)V

    .line 614
    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->model(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 607
    const-string v2, "ai_model"

    invoke-static {p0, v2, v0, v1, v3}, Lim/doit/pro/ai/AIAssistant;->row(Landroid/app/Activity;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$OnOk;Ljava/lang/String;Z)V

    .line 615
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ai_prompt"

    const-string v3, "id"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 616
    instance-of v1, v0, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v1, :cond_6a

    .line 617
    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    .line 618
    :try_start_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65b9\u6848\u63d0\u793a\u8bcd \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lim/doit/pro/ai/AIAssistant;->currentPromptName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setLabel(Ljava/lang/String;)V
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_61

    goto :goto_62

    :catchall_61
    move-exception v1

    .line 619
    :goto_62
    new-instance v1, Lim/doit/pro/ai/AIAssistant$13;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$13;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 626
    :cond_6a
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ai_test"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 627
    instance-of v1, v0, Lim/doit/pro/ui/component/LabelArrowButton;

    if-eqz v1, :cond_8a

    .line 628
    check-cast v0, Lim/doit/pro/ui/component/LabelArrowButton;

    new-instance v1, Lim/doit/pro/ai/AIAssistant$14;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIAssistant$14;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/LabelArrowButton;->setOnLayoutClickListener(Lim/doit/pro/activity/listener/OnLayoutClickListener;)V

    .line 654
    :cond_8a
    return-void
.end method
