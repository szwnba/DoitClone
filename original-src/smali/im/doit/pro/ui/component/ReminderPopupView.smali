.class public Lim/doit/pro/ui/component/ReminderPopupView;
.super Landroid/support/v4/app/Fragment;
.source "ReminderPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;
    }
.end annotation


# instance fields
.field private dateTv:Landroid/widget/TextView;

.field private mButtonsListener:Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;

.field private message:Lim/doit/pro/db/metadata/ReminderMessage;

.field private taskTitleTV:Landroid/widget/TextView;

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/ReminderPopupView;)Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lim/doit/pro/ui/component/ReminderPopupView;->mButtonsListener:Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;

    return-object v0
.end method

.method public static newInstance(Lim/doit/pro/db/metadata/ReminderMessage;)Lim/doit/pro/ui/component/ReminderPopupView;
    .locals 2
    .param p0, "newMessage"    # Lim/doit/pro/db/metadata/ReminderMessage;

    .prologue
    .line 25
    new-instance v1, Lim/doit/pro/ui/component/ReminderPopupView;

    invoke-direct {v1}, Lim/doit/pro/ui/component/ReminderPopupView;-><init>()V

    .line 26
    .local v1, "newFragment":Lim/doit/pro/ui/component/ReminderPopupView;
    invoke-virtual {p0}, Lim/doit/pro/db/metadata/ReminderMessage;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 27
    .local v0, "args":Landroid/os/Bundle;
    invoke-virtual {v1, v0}, Lim/doit/pro/ui/component/ReminderPopupView;->setArguments(Landroid/os/Bundle;)V

    .line 28
    return-object v1
.end method

.method private setViewContent()V
    .locals 6

    .prologue
    .line 91
    iget-object v1, p0, Lim/doit/pro/ui/component/ReminderPopupView;->titleTv:Landroid/widget/TextView;

    const v2, 0x7f0c0127

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 92
    iget-object v1, p0, Lim/doit/pro/ui/component/ReminderPopupView;->taskTitleTV:Landroid/widget/TextView;

    iget-object v2, p0, Lim/doit/pro/ui/component/ReminderPopupView;->message:Lim/doit/pro/db/metadata/ReminderMessage;

    iget-object v2, v2, Lim/doit/pro/db/metadata/ReminderMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lim/doit/pro/ui/component/ReminderPopupView;->message:Lim/doit/pro/db/metadata/ReminderMessage;

    iget-wide v2, v1, Lim/doit/pro/db/metadata/ReminderMessage;->startAt:J

    iget-object v1, p0, Lim/doit/pro/ui/component/ReminderPopupView;->message:Lim/doit/pro/db/metadata/ReminderMessage;

    iget-wide v4, v1, Lim/doit/pro/db/metadata/ReminderMessage;->endAt:J

    iget-object v1, p0, Lim/doit/pro/ui/component/ReminderPopupView;->message:Lim/doit/pro/db/metadata/ReminderMessage;

    iget-boolean v1, v1, Lim/doit/pro/db/metadata/ReminderMessage;->allDay:Z

    .line 93
    invoke-static {v2, v3, v4, v5, v1}, Lim/doit/pro/activity/utils/TaskUIHelper;->formatReminderForNotice(JJZ)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "timeMessage":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 96
    iget-object v1, p0, Lim/doit/pro/ui/component/ReminderPopupView;->dateTv:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v1, p0, Lim/doit/pro/ui/component/ReminderPopupView;->dateTv:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 81
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 83
    :try_start_0
    move-object v0, p1

    check-cast v0, Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;

    move-object v2, v0

    iput-object v2, p0, Lim/doit/pro/ui/component/ReminderPopupView;->mButtonsListener:Lim/doit/pro/ui/component/ReminderPopupView$ReminderPopupViewButtonsListener;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    const-string v4, " must implement SmsPopupButtonsListener"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-direct {v2, v3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 34
    invoke-virtual {p0}, Lim/doit/pro/ui/component/ReminderPopupView;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 35
    .local v0, "args":Landroid/os/Bundle;
    new-instance v6, Lim/doit/pro/db/metadata/ReminderMessage;

    invoke-virtual {p0}, Lim/doit/pro/ui/component/ReminderPopupView;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lim/doit/pro/db/metadata/ReminderMessage;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v6, p0, Lim/doit/pro/ui/component/ReminderPopupView;->message:Lim/doit/pro/db/metadata/ReminderMessage;

    .line 37
    const v6, 0x7f030051

    .line 38
    const/4 v7, 0x0

    .line 37
    invoke-virtual {p1, v6, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 39
    .local v4, "v":Landroid/view/View;
    const v6, 0x7f0b003a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lim/doit/pro/ui/component/ReminderPopupView;->titleTv:Landroid/widget/TextView;

    .line 40
    const v6, 0x7f0b0110

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lim/doit/pro/ui/component/ReminderPopupView;->taskTitleTV:Landroid/widget/TextView;

    .line 41
    const v6, 0x7f0b0107

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lim/doit/pro/ui/component/ReminderPopupView;->dateTv:Landroid/widget/TextView;

    .line 43
    const v6, 0x7f0b008c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 44
    .local v2, "completeBtn":Landroid/widget/ImageView;
    new-instance v6, Lim/doit/pro/ui/component/ReminderPopupView$1;

    invoke-direct {v6, p0}, Lim/doit/pro/ui/component/ReminderPopupView$1;-><init>(Lim/doit/pro/ui/component/ReminderPopupView;)V

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    const v6, 0x7f0b010a

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 52
    .local v1, "cancelBtn":Landroid/widget/Button;
    new-instance v6, Lim/doit/pro/ui/component/ReminderPopupView$2;

    invoke-direct {v6, p0}, Lim/doit/pro/ui/component/ReminderPopupView$2;-><init>(Lim/doit/pro/ui/component/ReminderPopupView;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v6, 0x7f0b0111

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 60
    .local v3, "snoozeBtn":Landroid/widget/Button;
    new-instance v6, Lim/doit/pro/ui/component/ReminderPopupView$3;

    invoke-direct {v6, p0}, Lim/doit/pro/ui/component/ReminderPopupView$3;-><init>(Lim/doit/pro/ui/component/ReminderPopupView;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v6, 0x7f0b010d

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 68
    .local v5, "viewBtn":Landroid/widget/Button;
    new-instance v6, Lim/doit/pro/ui/component/ReminderPopupView$4;

    invoke-direct {v6, p0}, Lim/doit/pro/ui/component/ReminderPopupView$4;-><init>(Lim/doit/pro/ui/component/ReminderPopupView;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    invoke-direct {p0}, Lim/doit/pro/ui/component/ReminderPopupView;->setViewContent()V

    .line 76
    return-object v4
.end method
