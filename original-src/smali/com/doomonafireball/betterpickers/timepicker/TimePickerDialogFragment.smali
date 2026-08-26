.class public Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "TimePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "TimePickerDialogFragment_hour"

.field private static final MINUTE:Ljava/lang/String; = "TimePickerDialogFragment_minute"

.field private static final REFERENCE_KEY:Ljava/lang/String; = "TimePickerDialogFragment_ReferenceKey"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "TimePickerDialogFragment_ThemeResIdKey"


# instance fields
.field private mButtonBackgroundResId:I

.field private mCancel:Landroid/widget/Button;

.field private mDialogBackgroundResId:I

.field private mDividerColor:I

.field private mDividerOne:Landroid/view/View;

.field private mDividerTwo:Landroid/view/View;

.field private mHour:I

.field private mMinute:I

.field private mPicker:Lcom/doomonafireball/betterpickers/timepicker/TimePicker;

.field private mReference:I

.field private mSet:Landroid/widget/Button;

.field private mTextColor:Landroid/content/res/ColorStateList;

.field private mTheme:I

.field private mTimePickerDialogHandlers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 22
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 32
    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mReference:I

    .line 33
    iput v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTimePickerDialogHandlers:Ljava/util/Vector;

    .line 22
    return-void
.end method

.method static synthetic access$0(Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;)Ljava/util/Vector;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTimePickerDialogHandlers:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$1(Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mReference:I

    return v0
.end method

.method static synthetic access$2(Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;)Lcom/doomonafireball/betterpickers/timepicker/TimePicker;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/doomonafireball/betterpickers/timepicker/TimePicker;

    return-object v0
.end method

.method public static newInstance(II)Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    .locals 1
    .param p0, "reference"    # I
    .param p1, "themeResId"    # I

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-static {p0, p1, v0, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->newInstance(IIII)Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(IIII)Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    .locals 3
    .param p0, "reference"    # I
    .param p1, "themeResId"    # I
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    .line 55
    new-instance v1, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;

    invoke-direct {v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;-><init>()V

    .line 56
    .local v1, "frag":Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    .local v0, "args":Landroid/os/Bundle;
    const-string v2, "TimePickerDialogFragment_ReferenceKey"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 58
    const-string v2, "TimePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    const-string v2, "TimePickerDialogFragment_hour"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string v2, "TimePickerDialogFragment_minute"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v1, v0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 62
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    .local v1, "args":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    const-string v2, "TimePickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    const-string v2, "TimePickerDialogFragment_ReferenceKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mReference:I

    .line 78
    :cond_0
    if-eqz v1, :cond_1

    const-string v2, "TimePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    const-string v2, "TimePickerDialogFragment_ThemeResIdKey"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    .line 81
    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "TimePickerDialogFragment_hour"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    const-string v2, "TimePickerDialogFragment_hour"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mHour:I

    .line 84
    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "TimePickerDialogFragment_minute"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 85
    const-string v2, "TimePickerDialogFragment_minute"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mMinute:I

    .line 88
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v5}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->setStyle(II)V

    .line 91
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 92
    const v2, 0x7f020044

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mButtonBackgroundResId:I

    .line 93
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerColor:I

    .line 94
    const v2, 0x7f02005b

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDialogBackgroundResId:I

    .line 96
    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 98
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 99
    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    sget-object v4, Lim/doit/pro/v4/R$styleable;->BetterPickersDialogFragment:[I

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    .line 102
    const/4 v2, 0x5

    .line 103
    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mButtonBackgroundResId:I

    .line 102
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mButtonBackgroundResId:I

    .line 104
    const/4 v2, 0x7

    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerColor:I

    .line 106
    const/16 v2, 0x9

    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 105
    iput v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDialogBackgroundResId:I

    .line 108
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_4
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 114
    const v1, 0x7f0300ae

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 115
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b01d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mSet:Landroid/widget/Button;

    .line 116
    const v1, 0x7f0b01d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mCancel:Landroid/widget/Button;

    .line 117
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mCancel:Landroid/widget/Button;

    new-instance v2, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$1;-><init>(Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/doomonafireball/betterpickers/timepicker/TimePicker;

    .line 124
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/doomonafireball/betterpickers/timepicker/TimePicker;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mHour:I

    iget v3, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mMinute:I

    invoke-virtual {v1, v2, v3}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setTime(II)V

    .line 125
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/doomonafireball/betterpickers/timepicker/TimePicker;

    invoke-virtual {v1}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->disableDelete()V

    .line 126
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/doomonafireball/betterpickers/timepicker/TimePicker;

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mSet:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setSetButton(Landroid/widget/Button;)V

    .line 127
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mSet:Landroid/widget/Button;

    new-instance v2, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$2;-><init>(Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    const v1, 0x7f0b01cf

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerOne:Landroid/view/View;

    .line 149
    const v1, 0x7f0b01d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerTwo:Landroid/view/View;

    .line 150
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerOne:Landroid/view/View;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 151
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerTwo:Landroid/view/View;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDividerColor:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 152
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mSet:Landroid/widget/Button;

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 153
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mSet:Landroid/widget/Button;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mButtonBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 154
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mCancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 155
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mCancel:Landroid/widget/Button;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mButtonBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 156
    iget-object v1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mPicker:Lcom/doomonafireball/betterpickers/timepicker/TimePicker;

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTheme:I

    invoke-virtual {v1, v2}, Lcom/doomonafireball/betterpickers/timepicker/TimePicker;->setTheme(I)V

    .line 157
    invoke-virtual {p0}, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    iget v2, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mDialogBackgroundResId:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 159
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 68
    return-void
.end method

.method public setTimePickerDialogHandlers(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "handlers":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment$TimePickerDialogHandler;>;"
    iput-object p1, p0, Lcom/doomonafireball/betterpickers/timepicker/TimePickerDialogFragment;->mTimePickerDialogHandlers:Ljava/util/Vector;

    .line 177
    return-void
.end method
