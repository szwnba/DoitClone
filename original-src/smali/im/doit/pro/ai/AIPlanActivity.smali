.class public Lim/doit/pro/ai/AIPlanActivity;
.super Lim/doit/pro/activity/DSwipeBackBaseActivity;
.source "AIPlanActivity.java"


# instance fields
.field private applyBtn:Lim/doit/pro/ui/component/DButton;

.field private flushScheduled:Z

.field private fullText:Ljava/lang/String;

.field private final pending:Ljava/lang/StringBuilder;

.field private regenBtn:Lim/doit/pro/ui/component/DButton;

.field private scroll:Landroid/widget/ScrollView;

.field private streaming:Z

.field private taskUuid:Ljava/lang/String;

.field private text:Landroid/widget/TextView;

.field private final ui:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    .line 30
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->ui:Landroid/os/Handler;

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    .line 32
    iput-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->flushScheduled:Z

    return-void
.end method

.method static synthetic access$000(Lim/doit/pro/ai/AIPlanActivity;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lim/doit/pro/ai/AIPlanActivity;->startGen()V

    return-void
.end method

.method static synthetic access$100(Lim/doit/pro/ai/AIPlanActivity;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lim/doit/pro/ai/AIPlanActivity;->apply()V

    return-void
.end method

.method static synthetic access$1000(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/ScrollView;
    .registers 1

    .line 18
    iget-object p0, p0, Lim/doit/pro/ai/AIPlanActivity;->scroll:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)V
    .registers 2

    .line 18
    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->appendDelta(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lim/doit/pro/ai/AIPlanActivity;)V
    .registers 1

    .line 18
    invoke-direct {p0}, Lim/doit/pro/ai/AIPlanActivity;->flushPending()V

    return-void
.end method

.method static synthetic access$402(Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 18
    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lim/doit/pro/ai/AIPlanActivity;)Landroid/widget/TextView;
    .registers 1

    .line 18
    iget-object p0, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$602(Lim/doit/pro/ai/AIPlanActivity;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    return p1
.end method

.method static synthetic access$700(Lim/doit/pro/ai/AIPlanActivity;)Lim/doit/pro/ui/component/DButton;
    .registers 1

    .line 18
    iget-object p0, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    return-object p0
.end method

.method static synthetic access$800(Lim/doit/pro/ai/AIPlanActivity;)Lim/doit/pro/ui/component/DButton;
    .registers 1

    .line 18
    iget-object p0, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    return-object p0
.end method

.method static synthetic access$902(Lim/doit/pro/ai/AIPlanActivity;Z)Z
    .registers 2

    .line 18
    iput-boolean p1, p0, Lim/doit/pro/ai/AIPlanActivity;->flushScheduled:Z

    return p1
.end method

.method private appendDelta(Ljava/lang/String;)V
    .registers 5

    .line 153
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u751f\u6210\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 154
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_19
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-boolean p1, p0, Lim/doit/pro/ai/AIPlanActivity;->flushScheduled:Z

    if-nez p1, :cond_31

    .line 158
    const/4 p1, 0x1

    iput-boolean p1, p0, Lim/doit/pro/ai/AIPlanActivity;->flushScheduled:Z

    .line 159
    iget-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->ui:Landroid/os/Handler;

    new-instance v0, Lim/doit/pro/ai/AIPlanActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIPlanActivity$5;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    :cond_31
    return-void
.end method

.method private apply()V
    .registers 4

    .line 179
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    if-eqz v0, :cond_d

    goto :goto_42

    .line 180
    :cond_d
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->taskUuid:Ljava/lang/String;

    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lim/doit/pro/ai/AIAssistant;->applyToTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 181
    if-gez v0, :cond_1d

    .line 182
    const-string v0, "\u4efb\u52a1\u672a\u627e\u5230\uff0c\u5e94\u7528\u5931\u8d25"

    invoke-static {p0, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 183
    return-void

    .line 185
    :cond_1d
    if-lez v0, :cond_39

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u2713 \u5df2\u5e94\u7528\uff1a\u63cf\u8ff0\u5df2\u66f4\u65b0\uff0c\u65b0\u589e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6761\u5b50\u4efb\u52a1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    .line 187
    :cond_39
    const-string v0, "\u2713 \u65b9\u6848\u5df2\u5199\u5165\u63cf\u8ff0"

    .line 185
    :goto_3b
    invoke-static {p0, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->finish()V

    .line 189
    return-void

    .line 179
    :cond_42
    :goto_42
    return-void
.end method

.method private flushPending()V
    .registers 3

    .line 169
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 170
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 172
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$6;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIPlanActivity$6;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 176
    :cond_23
    return-void
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 35
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private startGen()V
    .registers 5

    .line 80
    iget-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    if-eqz v0, :cond_5

    return-void

    .line 81
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    .line 82
    const-string v1, ""

    iput-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 84
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u751f\u6210\u2026\n\n"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 86
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 87
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    invoke-virtual {v1, v3}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 90
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 91
    iget-object v3, p0, Lim/doit/pro/ai/AIPlanActivity;->taskUuid:Ljava/lang/String;

    invoke-static {p0, v3}, Lim/doit/pro/ai/AIAssistant;->loadTask(Landroid/content/Context;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v3

    .line 92
    if-nez v3, :cond_53

    .line 93
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    const-string v3, "\u4efb\u52a1\u672a\u627e\u5230\uff08\u53ef\u80fd\u5df2\u88ab\u5220\u9664\uff09"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iput-boolean v2, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    .line 95
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 96
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 97
    return-void

    .line 100
    :cond_53
    invoke-static {}, Lim/doit/pro/ai/AIAssistant;->systemPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lim/doit/pro/ai/AIAssistant;->userPrompt(Landroid/content/Context;Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lim/doit/pro/ai/AIPlanActivity$4;

    invoke-direct {v3, p0, v1}, Lim/doit/pro/ai/AIPlanActivity$4;-><init>(Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/ref/WeakReference;)V

    invoke-static {p0, v0, v2, v3}, Lim/doit/pro/ai/AIAssistant;->chatStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$StreamCb;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 40
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "layout"

    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity_ai_plan"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 44
    if-eqz p1, :cond_36

    .line 45
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ai_plan_page_title"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 46
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 50
    :cond_36
    const-string p1, "ai_plan_text"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    .line 51
    const-string p1, "ai_plan_scroll"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->scroll:Landroid/widget/ScrollView;

    .line 52
    const-string p1, "ai_plan_regen"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lim/doit/pro/ui/component/DButton;

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    .line 53
    const-string p1, "ai_plan_apply"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lim/doit/pro/ui/component/DButton;

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    .line 55
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskUuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->taskUuid:Ljava/lang/String;

    .line 56
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskTitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->taskUuid:Ljava/lang/String;

    if-eqz v0, :cond_c2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8f

    goto :goto_c2

    .line 63
    :cond_8f
    const-string v0, "ai_plan_close"

    invoke-direct {p0, v0}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIPlanActivity$1;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIPlanActivity$2;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIPlanActivity$3;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    if-eqz p1, :cond_be

    .line 74
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 76
    :cond_be
    invoke-direct {p0}, Lim/doit/pro/ai/AIPlanActivity;->startGen()V

    .line 77
    return-void

    .line 58
    :cond_c2
    :goto_c2
    const-string p1, "\u4efb\u52a1\u53c2\u6570\u7f3a\u5931"

    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->finish()V

    .line 60
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 193
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 194
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->finish()V

    .line 195
    const/4 p1, 0x1

    return p1

    .line 197
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
