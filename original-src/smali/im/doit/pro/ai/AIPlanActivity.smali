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

.field private taskRepeatNo:Ljava/lang/String;

.field private taskUuid:Ljava/lang/String;

.field private text:Landroid/widget/TextView;

.field private final ui:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 18
    invoke-direct {p0}, Lim/doit/pro/activity/DSwipeBackBaseActivity;-><init>()V

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    .line 31
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->ui:Landroid/os/Handler;

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    .line 33
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

    .line 155
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u751f\u6210\u2026"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 156
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_19
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-boolean p1, p0, Lim/doit/pro/ai/AIPlanActivity;->flushScheduled:Z

    if-nez p1, :cond_31

    .line 160
    const/4 p1, 0x1

    iput-boolean p1, p0, Lim/doit/pro/ai/AIPlanActivity;->flushScheduled:Z

    .line 161
    iget-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->ui:Landroid/os/Handler;

    new-instance v0, Lim/doit/pro/ai/AIPlanActivity$5;

    invoke-direct {v0, p0}, Lim/doit/pro/ai/AIPlanActivity$5;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    const-wide/16 v1, 0x3c

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 168
    :cond_31
    return-void
.end method

.method private apply()V
    .registers 4

    .line 181
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    if-eqz v0, :cond_d

    goto :goto_44

    .line 182
    :cond_d
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->taskUuid:Ljava/lang/String;

    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->taskRepeatNo:Ljava/lang/String;

    iget-object v2, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lim/doit/pro/ai/AIAssistant;->applyToTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 183
    if-gez v0, :cond_1f

    .line 184
    const-string v0, "\u4efb\u52a1\u672a\u627e\u5230\uff0c\u5e94\u7528\u5931\u8d25"

    invoke-static {p0, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    return-void

    .line 187
    :cond_1f
    if-lez v0, :cond_3b

    .line 188
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

    goto :goto_3d

    .line 189
    :cond_3b
    const-string v0, "\u2713 \u65b9\u6848\u5df2\u5199\u5165\u63cf\u8ff0"

    .line 187
    :goto_3d
    invoke-static {p0, v0}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->finish()V

    .line 191
    return-void

    .line 181
    :cond_44
    :goto_44
    return-void
.end method

.method private flushPending()V
    .registers 3

    .line 171
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_23

    .line 172
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 174
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->scroll:Landroid/widget/ScrollView;

    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$6;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIPlanActivity$6;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 178
    :cond_23
    return-void
.end method

.method private id(Ljava/lang/String;)I
    .registers 5

    .line 36
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
    .registers 6

    .line 82
    iget-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    if-eqz v0, :cond_5

    return-void

    .line 83
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    .line 84
    const-string v1, ""

    iput-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->fullText:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->pending:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 86
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    const-string v3, "\u6b63\u5728\u751f\u6210\u2026\n\n"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 88
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v3}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 89
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    invoke-virtual {v1, v2}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 90
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    invoke-virtual {v1, v3}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 92
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 93
    iget-object v3, p0, Lim/doit/pro/ai/AIPlanActivity;->taskUuid:Ljava/lang/String;

    iget-object v4, p0, Lim/doit/pro/ai/AIPlanActivity;->taskRepeatNo:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lim/doit/pro/ai/AIAssistant;->loadTask(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lim/doit/pro/model/Task;

    move-result-object v3

    .line 94
    if-nez v3, :cond_55

    .line 95
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    const-string v3, "\u4efb\u52a1\u672a\u627e\u5230\uff08\u53ef\u80fd\u5df2\u88ab\u5220\u9664\uff09"

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iput-boolean v2, p0, Lim/doit/pro/ai/AIPlanActivity;->streaming:Z

    .line 97
    iget-object v1, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/DButton;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setAlpha(F)V

    .line 99
    return-void

    .line 102
    :cond_55
    invoke-static {}, Lim/doit/pro/ai/AIAssistant;->systemPrompt()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lim/doit/pro/ai/AIAssistant;->userPrompt(Landroid/content/Context;Lim/doit/pro/model/Task;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lim/doit/pro/ai/AIPlanActivity$4;

    invoke-direct {v3, p0, v1}, Lim/doit/pro/ai/AIPlanActivity$4;-><init>(Lim/doit/pro/ai/AIPlanActivity;Ljava/lang/ref/WeakReference;)V

    invoke-static {p0, v0, v2, v3}, Lim/doit/pro/ai/AIAssistant;->chatStream(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lim/doit/pro/ai/AIAssistant$StreamCb;)V

    .line 152
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 41
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "layout"

    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity_ai_plan"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->setContentView(I)V

    .line 44
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    .line 45
    if-eqz p1, :cond_36

    .line 46
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "string"

    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ai_plan_page_title"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 51
    :cond_36
    const-string p1, "ai_plan_text"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->text:Landroid/widget/TextView;

    .line 52
    const-string p1, "ai_plan_scroll"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ScrollView;

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->scroll:Landroid/widget/ScrollView;

    .line 53
    const-string p1, "ai_plan_regen"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lim/doit/pro/ui/component/DButton;

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    .line 54
    const-string p1, "ai_plan_apply"

    invoke-direct {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lim/doit/pro/ui/component/DButton;

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    .line 56
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskUuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->taskUuid:Ljava/lang/String;

    .line 57
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskRepeatNo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lim/doit/pro/ai/AIPlanActivity;->taskRepeatNo:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "taskTitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->taskUuid:Ljava/lang/String;

    if-eqz v0, :cond_ce

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9b

    goto :goto_ce

    .line 65
    :cond_9b
    const-string v0, "ai_plan_close"

    invoke-direct {p0, v0}, Lim/doit/pro/ai/AIPlanActivity;->id(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lim/doit/pro/ai/AIPlanActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIPlanActivity$1;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->regenBtn:Lim/doit/pro/ui/component/DButton;

    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIPlanActivity$2;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lim/doit/pro/ai/AIPlanActivity;->applyBtn:Lim/doit/pro/ui/component/DButton;

    new-instance v1, Lim/doit/pro/ai/AIPlanActivity$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ai/AIPlanActivity$3;-><init>(Lim/doit/pro/ai/AIPlanActivity;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    if-eqz p1, :cond_ca

    .line 76
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 78
    :cond_ca
    invoke-direct {p0}, Lim/doit/pro/ai/AIPlanActivity;->startGen()V

    .line 79
    return-void

    .line 60
    :cond_ce
    :goto_ce
    const-string p1, "\u4efb\u52a1\u53c2\u6570\u7f3a\u5931"

    invoke-static {p0, p1}, Lim/doit/pro/ai/AIAssistant;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->finish()V

    .line 62
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_e

    .line 196
    invoke-virtual {p0}, Lim/doit/pro/ai/AIPlanActivity;->finish()V

    .line 197
    const/4 p1, 0x1

    return p1

    .line 199
    :cond_e
    invoke-super {p0, p1}, Lim/doit/pro/activity/DSwipeBackBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
